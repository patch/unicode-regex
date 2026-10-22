#!/usr/bin/env ruby
# Read-only checks for the records and their stored display/ranking data.
require 'yaml'
require 'bigdecimal'
require 'uri'
require 'date'

SCHEMAS = {
  'Languages' => ['language', %w[record_type name version tiobe_rank tiobe_rating],
                  %w[version_source support_status providers notes sources]],
  'Providers' => ['provider', %w[record_type name provider_type documentation rank score
                               ranking_language_syntax ranking_included_api ranking_add_on_library],
                  %w[iuc38 utw2026 inactive additional_libraries library_notes library_sources sources
                     unicode_review_version unicode_version unicode_host_version release_date unicode_review_date
                     unicode_scope unicode_claim property_summary property_inventory_date property_inventory_notes unicode_notes unicode_sources]],
  'Support' => ['support', %w[record_type language provider category sources],
                %w[api implementation targets notes]],
  'Libraries' => ['library', %w[record_type language provider name version release_date sources],
                  %w[maintenance_date notes]],
  'Features' => ['feature', %w[record_type name sort_order sections role scope notes sources],
                 %w[requirement required_properties]],
  'Evaluations' => ['evaluation', %w[record_type provider feature status mechanism syntax notes sources],
                    %w[undocumented_syntax uts_notes]],
  'Properties' => ['property', %w[record_type provider name aliases value_type values inventory_scope sources],
                   %w[domain data_sets notes]]
}.freeze
CATEGORIES = {
  'Language syntax' => 'ranking_language_syntax',
  'Included API' => 'ranking_included_api',
  'Add-on library' => 'ranking_add_on_library'
}.freeze
LISTS = %w[providers sources targets ranking_language_syntax ranking_included_api ranking_add_on_library
           additional_libraries library_sources unicode_sources sections required_properties syntax
           undocumented_syntax aliases values data_sets].freeze
NUMBERS = %w[tiobe_rank tiobe_rating rank score sort_order].freeze
STATUSES = ['None documented', 'Unspecified'].freeze

def check(condition, message)
  @errors << message unless condition
end

def finish_phase
  abort @errors.map { |message| "ERROR: #{message}" }.join("\n") unless @errors.empty?
end

def read_yaml(text, path)
  tree = YAML.parse(text)
  visit = lambda do |node|
    if node.is_a?(Psych::Nodes::Mapping)
      keys = node.children.each_slice(2).map { |key, _| key.value }
      check(keys.uniq == keys, "#{path}: duplicate YAML key")
    end
    Array(node.children).each { |child| visit.call(child) }
  end
  visit.call(tree) if tree
  YAML.safe_load(text, permitted_classes: [Date], aliases: false)
rescue Psych::Exception => e
  check(false, "#{path}: #{e.message.lines.first.strip}")
  nil
end

abort 'Usage: ruby scripts/check_data.rb [project-directory]' if ARGV.size > 1
root = ARGV.empty? ? File.expand_path('..', __dir__) : File.expand_path(ARGV.first)
@errors = []
records = {}
SCHEMAS.each do |folder, (type, required, optional)|
  paths = Dir[File.join(root, folder, '**', '*.md')].sort
  check(!paths.empty?, "#{folder}: no records found")
  records[folder] = {}
  paths.each do |path|
    relative = path.delete_prefix(root + '/')
    id = File.basename(path, '.md')
    check(File.dirname(path) == File.join(root, folder), "#{relative}: records must be directly in #{folder}")
    check(id.match?(/\A[a-z0-9]+(?:-[a-z0-9]+)*\z/), "#{relative}: use a lowercase ID with single hyphens")
    text = File.read(path)
    match = text.match(/\A---\r?\n(.*?)\r?\n---\r?\n(.*)\z/m)
    check(match, "#{relative}: missing YAML frontmatter")
    next unless match
    data = read_yaml(match[1], relative)
    check(data.is_a?(Hash), "#{relative}: properties must be a mapping")
    next unless data.is_a?(Hash)
    check(!records[folder].key?(id), "#{relative}: duplicate ID")
    records[folder][id] = data
    check(data['record_type'] == type, "#{relative}: record_type must be #{type}")
    check((required - data.keys).empty?, "#{relative}: missing properties #{(required - data.keys).join(', ')}")
    check((data.keys - required - optional).empty?, "#{relative}: unknown properties #{(data.keys - required - optional).join(', ')}")
    check(match[2].strip.empty?, "#{relative}: move body content into notes and sources properties")
    data.each do |key, value|
      valid = if LISTS.include?(key)
                value.is_a?(Array) && value.all? { |item| item.is_a?(String) && !item.strip.empty? } && value.uniq == value
              elsif NUMBERS.include?(key)
                value.is_a?(Numeric) && value.finite? && value >= 0
              elsif %w[iuc38 utw2026 inactive].include?(key)
                value == true || value == false
              elsif %w[release_date maintenance_date unicode_review_date property_inventory_date].include?(key)
                value.is_a?(Date) || (value.is_a?(String) && value.match?(/\A\d{4}-\d{2}-\d{2}\z/))
              else
                value.is_a?(String) && !value.strip.empty? && !value.include?("\n")
              end
      check(valid, "#{relative}: invalid type or value for #{key}")
    end
    %w[rank tiobe_rank sort_order].each do |key|
      check(data[key].is_a?(Integer) && data[key] > 0, "#{relative}: #{key} must be a positive integer") if data.key?(key)
    end
    (Array(data['sources']) + Array(data['library_sources']) + Array(data['unicode_sources']) + [data['version_source'], data['documentation']].compact).each do |url|
      uri = URI.parse(url.to_s) rescue nil
      check(uri.is_a?(URI::HTTP) && uri.host && !uri.host.empty?, "#{relative}: invalid source URL #{url.inspect}")
    end
  end
end
Dir[File.join(root, '*.md')].each do |path|
  match = File.read(path).match(/\A---\r?\n(.*?)\r?\n---/m)
  next unless match
  data = read_yaml(match[1], File.basename(path))
  if data.is_a?(Hash) && SCHEMAS.values.any? { |type, _, _| type == data['record_type'] }
    check(false, "#{File.basename(path)}: data record is outside its record folder")
  end
end
finish_phase

languages, providers, support, libraries = records.values_at('Languages', 'Providers', 'Support', 'Libraries')
features, evaluations, properties = records.values_at('Features', 'Evaluations', 'Properties')
[languages, providers].each do |group|
  names = group.values.map { |record| record['name'] }
  check(names.uniq == names, 'Language and provider names must be unique within their record type')
end
ranks = languages.values.map { |language| language['tiobe_rank'] }
check(ranks.uniq == ranks, 'Duplicate TIOBE rank')
providers.each do |id, provider|
  check(['Engine', 'API family', 'Standard family'].include?(provider['provider_type']), "Providers/#{id}: invalid provider_type")
end
facts = []
support.each do |id, mapping|
  language, provider = mapping.values_at('language', 'provider')
  check(languages.key?(language), "Support/#{id}: unknown language #{language}")
  check(providers.key?(provider), "Support/#{id}: unknown provider #{provider}")
  check(CATEGORIES.key?(mapping['category']), "Support/#{id}: invalid category")
  check(!mapping['sources'].empty?, "Support/#{id}: sources cannot be empty")
  pair = "#{language}-#{provider}"
  check(id == pair || id.start_with?(pair + '-'), "Support/#{id}: filename does not match its references")
  fact = [language, provider, mapping['category'], mapping['implementation'], Array(mapping['targets']).sort]
  check(!facts.include?(fact), "Support/#{id}: duplicate support relationship")
  facts << fact
end
finish_phase

# Documentation assessments are independent of language exposure and ranking.
feature_names = features.values.map { |feature| feature['name'] }
check(feature_names.uniq == feature_names, 'Features: duplicate display name')
orders = features.values.map { |feature| feature['sort_order'] }
check(orders.uniq == orders, 'Features: duplicate sort_order')
features.each do |id, feature|
  check(%w[Requirement Detail Guidance Optional].include?(feature['role']), "Features/#{id}: invalid role")
  check(%w[Regex Host].include?(feature['scope']), "Features/#{id}: invalid scope")
  check(!feature['sections'].empty?, "Features/#{id}: sections cannot be empty")
  check(!feature['sources'].empty?, "Features/#{id}: sources cannot be empty")
end
review_fields = %w[unicode_review_version unicode_version release_date unicode_review_date
                   unicode_scope unicode_claim property_summary property_inventory_notes unicode_notes unicode_sources]
reviewed = providers.select { |_, provider| (provider.keys & review_fields).any? }
reviewed.each do |id, provider|
  check((review_fields - provider.keys).empty?, "Providers/#{id}: incomplete Unicode review metadata")
  check(!Array(provider['unicode_sources']).empty?, "Providers/#{id}: Unicode sources cannot be empty")
  %w[release_date unicode_review_date property_inventory_date].each do |key|
    next unless provider.key?(key)
    value = provider[key]
    date = value.is_a?(Date) ? value : (Date.iso8601(value) if value)
    check(date, "Providers/#{id}: invalid #{key}")
  rescue Date::Error
    check(false, "Providers/#{id}: invalid #{key}")
  end
  release = provider['release_date'].to_s
  review = provider['unicode_review_date'].to_s
  check(release <= review, "Providers/#{id}: release is after review date")
  if provider.key?('property_inventory_date')
    check(provider['property_inventory_date'].to_s <= review, "Providers/#{id}: inventory date is after review date")
  end
end
evaluation_pairs = []
evaluations.each do |id, evaluation|
  provider, feature = evaluation.values_at('provider', 'feature')
  check(reviewed.key?(provider), "Evaluations/#{id}: provider lacks Unicode review metadata")
  check(features.key?(feature), "Evaluations/#{id}: unknown feature #{feature}")
  check(id == "#{provider}-#{feature}", "Evaluations/#{id}: filename does not match its references")
  pair = [provider, feature]
  check(!evaluation_pairs.include?(pair), "Evaluations/#{id}: duplicate provider/feature")
  evaluation_pairs << pair
  check(%w[Supported Partial Unsupported Undocumented].include?(evaluation['status']), "Evaluations/#{id}: invalid status")
  check(['Engine', 'Host API', 'None', 'Undocumented'].include?(evaluation['mechanism']), "Evaluations/#{id}: invalid mechanism")
  scope = features.dig(feature, 'scope')
  if evaluation['mechanism'] == 'Host API'
    check(scope == 'Host', "Evaluations/#{id}: host workflow must have Host scope")
  elsif evaluation['mechanism'] == 'Engine'
    check(scope == 'Regex', "Evaluations/#{id}: engine capability must have Regex scope")
  end
  check(!evaluation['sources'].empty?, "Evaluations/#{id}: sources cannot be empty")
  if %w[Unsupported Undocumented].include?(evaluation['status'])
    check(evaluation['syntax'].empty?, "Evaluations/#{id}: unsupported or undocumented syntax must not be presented as accepted")
  end
end
reviewed.each_key do |provider|
  features.each_key do |feature|
    check(evaluation_pairs.include?([provider, feature]), "Evaluations: missing #{provider}-#{feature}")
  end
end
property_pairs = []
properties.each do |id, property|
  provider, name = property.values_at('provider', 'name')
  check(reviewed.key?(provider), "Properties/#{id}: provider lacks Unicode review metadata")
  expected = "#{provider}-#{name.downcase.tr('_', '-')}"
  check(id == expected, "Properties/#{id}: filename does not match provider and property name")
  check(!property_pairs.include?([provider, name]), "Properties/#{id}: duplicate provider/property")
  property_pairs << [provider, name]
  check(['Binary', 'Enumerated', 'Numeric', 'Set membership'].include?(property['value_type']), "Properties/#{id}: invalid value_type")
  check(['Code point', 'String'].include?(property.fetch('domain', 'Code point')), "Properties/#{id}: invalid domain")
  if property.key?('data_sets')
    check(property['value_type'] == 'Set membership', "Properties/#{id}: data_sets requires a set-valued property")
    check((property['values'] & property['data_sets']).empty?, "Properties/#{id}: named values and data sets must be separate")
  end
  check(!property['sources'].empty?, "Properties/#{id}: sources cannot be empty")
end
finish_phase

# Supplemental libraries never enter the Support relationships used below for ranking.
checked_text = File.read(File.join(root, 'Data.md'))[/Additional libraries checked: `(\d{4}-\d{2}-\d{2})`/, 1]
checked = Date.iso8601(checked_text) rescue nil
check(checked, 'Data.md: missing or invalid additional-library check date')
library_pairs = []
libraries.each do |id, library|
  language, provider = library.values_at('language', 'provider')
  check(languages.key?(language), "Libraries/#{id}: unknown language #{language}")
  check(providers.key?(provider), "Libraries/#{id}: unknown provider #{provider}")
  pair = [language, provider]
  check(!library_pairs.include?(pair), "Libraries/#{id}: duplicate language/provider pair")
  library_pairs << pair
  check(id == pair.join('-'), "Libraries/#{id}: filename does not match its references")
  check(!library['sources'].empty?, "Libraries/#{id}: sources cannot be empty")
  documented = support.values.any? do |mapping|
    mapping.values_at('language', 'provider') == pair && mapping['category'] == 'Add-on library'
  end
  check(!documented, "Libraries/#{id}: already represented by a language-documented add-on in Support")
  dates = %w[release_date maintenance_date].to_h do |property|
    value = library[property]
    date = value.is_a?(Date) ? value : (Date.iso8601(value) if value)
    check(date, "Libraries/#{id}: invalid #{property}") if value
    [property, date]
  rescue Date::Error
    check(false, "Libraries/#{id}: invalid #{property}")
    [property, nil]
  end
  released = dates['release_date']
  maintained = dates['maintenance_date'] || released
  if checked && released && maintained
    check(released <= maintained && maintained <= checked, "Libraries/#{id}: inconsistent release/maintenance dates")
    check(maintained >= (checked << 24), "Libraries/#{id}: maintenance evidence is older than two years at the check date")
  end
  check(!library['version'].match?(/(?:alpha|beta|preview|devel|snapshot|(?:\A|[.\-])rc\d*)/i), "Libraries/#{id}: prerelease version")
end
finish_phase

providers.each do |id, provider|
  expected = libraries.keys.select { |library| libraries[library]['provider'] == id }
  expected.sort_by! { |library| [languages[libraries[library]['language']]['tiobe_rank'], libraries[library]['name']] }
  check(Array(provider['additional_libraries']) == expected, "Providers/#{id}: additional-library links differ from Libraries or their TIOBE order")
end

languages.each do |id, language|
  mapped = support.values.select { |mapping| mapping['language'] == id }.map { |mapping| mapping['provider'] }.uniq
  expected = mapped.sort_by { |provider| [providers[provider]['rank'], providers[provider]['name']] }
  check(Array(language['providers']) == expected, "Languages/#{id}: providers display list differs from Support or its rank order")
  valid_status = mapped.empty? ? STATUSES.include?(language['support_status']) : !language.key?('support_status')
  check(valid_status, "Languages/#{id}: support_status is inconsistent with Support")
end

# A language contributes once per provider, using its strongest integration category.
pairs = support.values.group_by { |mapping| mapping.values_at('language', 'provider') }
strongest = pairs.transform_values { |mappings| mappings.min_by { |mapping| CATEGORIES.keys.index(mapping['category']) } }
vectors = {}
providers.each do |id, provider|
  related = strongest.select { |(_, provider_id), _| provider_id == id }
  subtotals = CATEGORIES.map do |category, property|
    ids = related.select { |_, mapping| mapping['category'] == category }.keys.map(&:first)
    ids.sort_by! { |language| languages[language]['tiobe_rank'] }
    displayed = provider[property].map do |label|
      languages.find { |_, language| label == language['name'] || label.start_with?(language['name'] + ' (') }&.first
    end
    check(displayed == ids, "Providers/#{id}: #{property} membership or TIOBE order differs from Support")
    ids.sum(BigDecimal('0')) { |language| BigDecimal(languages[language]['tiobe_rating'].to_s) }
  end
  total = subtotals.sum(BigDecimal('0'))
  check(BigDecimal(provider['score'].to_s) == total, "Providers/#{id}: score differs from language ratings and Support")
  vectors[id] = [total, *subtotals]
end
last_vector = nil
rank = nil
providers.keys.sort_by { |id| [*vectors[id].map { |value| -value }, providers[id]['name']] }.each_with_index do |id, index|
  rank = index + 1 if vectors[id] != last_vector
  check(providers[id]['rank'] == rank, "Providers/#{id}: incorrect competition rank (expected #{rank})")
  last_vector = vectors[id]
end

base_path = File.join(root, 'Unicode Regex.base')
if File.file?(base_path)
  base = read_yaml(File.read(base_path), 'Unicode Regex.base')
  if base.is_a?(Hash) && base['formulas'].is_a?(Hash) && base['views'].is_a?(Array)
    views = base['views']
    names = views.map { |view| view['name'] }
    check(names.uniq == names, 'Unicode Regex.base: duplicate view name')
    views.each do |view|
      columns = Array(view['order']) + Array(view['sort']).map { |sort| sort['property'] }
      columns.grep(/^formula\./).each do |column|
        check(base['formulas'].key?(column.delete_prefix('formula.')), "#{view['name']}: undefined formula #{column}")
      end
    end
    {
      'Unicode reviews' => %w[unicode_version unicode_host_version unicode_scope property_inventory_date property_inventory_notes unicode_claim unicode_notes unicode_sources],
      'Unicode features' => %w[scope notes sources],
      'Unicode evaluations' => %w[formula.feature_scope syntax undocumented_syntax notes uts_notes formula.review_version formula.review_scope sources],
      'Unicode feature comparison' => %w[syntax undocumented_syntax notes uts_notes formula.review_version formula.review_scope sources],
      'Unicode host workflows' => %w[mechanism syntax notes uts_notes formula.review_version formula.review_scope sources],
      'Unicode properties' => %w[aliases formula.property_domain values data_sets notes formula.inventory_date formula.inventory_notes formula.review_version sources]
    }.each do |name, required|
      view = views.find { |candidate| candidate['name'] == name }
      check(view, "Unicode Regex.base: missing #{name} view")
      check((required - Array(view && view['order'])).empty?, "#{name}: missing visible evidence or qualification columns")
    end
    {'Unicode feature comparison' => 'Regex', 'Unicode host workflows' => 'Host'}.each do |name, scope|
      view = views.find { |candidate| candidate['name'] == name }
      check(Array(view && view.dig('filters', 'and')).include?("formula.feature_scope == \"#{scope}\""), "#{name}: missing #{scope} scope filter")
    end
  else
    check(false, 'Unicode Regex.base: invalid base structure')
  end
else
  check(false, 'Missing Unicode Regex.base')
end
finish_phase
puts "OK: #{languages.size} languages, #{providers.size} providers, #{support.size} support mappings, #{libraries.size} additional libraries; references, properties, display lists and rankings agree."
puts "Unicode research: #{reviewed.size} providers, #{features.size} features, #{evaluations.size} evaluations, #{properties.size} property entries; coverage and evidence fields agree."
