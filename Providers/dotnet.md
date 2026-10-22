---
record_type: provider
name: .NET
provider_type: Engine
iuc38: true
utw2026: true
documentation: https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-language-quick-reference
unicode_review_version: "10.0.13"
unicode_version: "Undocumented"
unicode_host_version: "Undocumented; host normalization/casing data depends on ICU/NLS and configuration."
release_date: "2026-10-13"
unicode_review_date: "2026-10-22"
unicode_scope: ".NET 10 System.Text.RegularExpressions, all documented stable options and general .NET host workflows; source generation versus runtime casing provenance retained. Historical .NET Framework and .NET 11 preview-only additions are qualified separately."
unicode_claim: "No UTS #18 level or revision-specific conformance claim found in the reviewed official .NET regex documentation."
property_summary: "General_Category: 30 subcategories and seven aggregates. Block: 105 BMP ranges, 108 selector spellings including three alias pairs. No Script, Script_Extensions, Age, numeric, width, binary or string-property family in the documented grammar."
property_inventory_notes: "Two property-family records reproduce the complete published category/block tables and all explicit aliases. The block table states Unicode 4.0 and Perl 5.6 provenance; it is not a current UCD block inventory. Category data is provided by CharUnicodeInfo, but reviewed Unicode-version tables describe historical .NET Framework, not .NET 10. No modern classification version is inferred from those tables, host ICU or implementation files."
unicode_notes: "Documentation-only review and repeatability audit completed across all 36 features and IUC38 technical questions. Regex hexadecimal notation is UTF-16-code-unit based; Rune scalar and StringInfo extended-grapheme host APIs are separate. Stable .NET 10 anchors/dot use LF; AnyNewLine is documented for .NET 11 and excluded. Current-culture casing is the default; CultureInvariant is an API option. Source-generated casing tables follow the compile-time target framework. Examples were not executed; engine implementation was not inspected."
unicode_sources:
  - "https://dotnet.microsoft.com/en-us/platform/support/policy"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-language-quick-reference"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-escapes-in-regular-expressions"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-options"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/anchors-in-regular-expressions"
  - "https://learn.microsoft.com/en-us/dotnet/api/system.globalization.charunicodeinfo?view=net-10.0"
  - "https://learn.microsoft.com/en-us/dotnet/api/system.text.regularexpressions.generatedregexattribute?view=net-10.0"
  - "https://learn.microsoft.com/en-us/dotnet/api/system.text.regularexpressions.regexparseerror?view=net-10.0"
  - "https://learn.microsoft.com/en-us/dotnet/api/system.string.normalize?view=net-10.0"
  - "https://learn.microsoft.com/en-us/dotnet/core/whats-new/dotnet-10/libraries"
  - "https://learn.microsoft.com/en-us/dotnet/core/extensions/globalization-icu"
  - "https://learn.microsoft.com/en-us/dotnet/core/compatibility/globalization/5.0/uax29-compliant-grapheme-enumeration"
rank: 6
score: 6.31
ranking_language_syntax:
  - "PowerShell"
ranking_included_api:
  - "C#"
  - "Visual Basic"
ranking_add_on_library: []
---
