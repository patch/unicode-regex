---
record_type: "provider"
name: "ECMAScript RegExp"
provider_type: "Standard family"
iuc38: true
utw2026: true
documentation: "https://262.ecma-international.org/17.0/#sec-regexp-regular-expression-objects"
rank: 8
score: 4.26
ranking_language_syntax:
  - "JavaScript"
  - "TypeScript"
ranking_included_api:
  - "Dart"
  - "Kotlin (JS)"
ranking_add_on_library: []
unicode_review_version: "ECMAScript 2026 (ECMA-262 edition 17)"
unicode_version: "Latest Unicode required; 18.0.0 at review date, implementation data varies"
unicode_host_version: "Latest Unicode required by the standard; concrete runtime data not surveyed"
release_date: "2026-06-30"
unicode_review_date: "2026-10-22"
unicode_scope: "Published ECMA-262 edition 17, all standard RegExp options including u and v; standard-family capability, not a runtime compatibility matrix. JavaScript and TypeScript use their execution runtime. Dart exposes unicode (default false) but no v/unicodeSets option; Kotlin JS Regex documents always using u, so its wrapper does not expose the standard v feature set."
unicode_claim: "ECMA-262 says its property tables form a superset of UTS18 RL1.2, without a UTS revision. No overall UTS #18 Level 1 or Level 2 claim was found; this unversioned repertoire statement does not establish all revision-25 requirements."
property_summary: "63 documented properties: General_Category, Script, Script_Extensions, 53 binary code-point properties and seven binary properties of strings (v only). Unicode 18 value inventory: 38 General_Category values and 179 Script values, also used for Script_Extensions."
property_inventory_date: "2026-06-30"
property_inventory_notes: "Property names and aliases are the closed edition-17 tables (Ecma approval date); value names/aliases are imported by normative reference from Unicode PropertyValueAliases.txt, not fixed by the ECMAScript edition. The recorded Unicode 18.0.0 file is dated 2026-06-24 and released 2026-09-16. Inventory names do not assert that every runtime has Unicode 18 data or exposes v. No arbitrary UCD names, binary =Yes/=No spellings or combined Script_Extensions selectors are added."
unicode_notes: "Release date is Ecma approval; the official GitHub es2026 tag was released July 2. ECMA-262 references the latest Unicode dynamically, rather than pinning a release. Unicode 18.0 release is confirmed by the official announcement despite stale preliminary-draft wording on its landing page. UTF-16 strings support unpaired surrogates; u/v matching uses code points while match indexes remain code-unit indexes. Repeatability audit completed against IUC38 technical questions: all 36 features, syntax variants, complete published property tables/value aliases, contextual replacement, shorthand/boundary defaults, grapheme distinctions, linebreaks and host workflows are recorded; runtime adoption remains outside scope."
unicode_sources:
  - "https://ecma-international.org/publications-and-standards/standards/ecma-262/"
  - "https://ecma-international.org/news/ecma-international-approves-new-standards-14/"
  - "https://github.com/tc39/ecma262/releases/tag/es2026"
  - "https://262.ecma-international.org/17.0/#sec-conformance"
  - "https://262.ecma-international.org/17.0/#sec-normative-references"
  - "https://262.ecma-international.org/17.0/#sec-pattern-semantics"
  - "https://262.ecma-international.org/17.0/#sec-runtime-semantics-unicodematchproperty-p"
  - "https://www.unicode.org/versions/Unicode18.0.0/"
  - "https://blog.unicode.org/2026/09/announcing-unicode-standard-version-180.html"
  - "https://www.unicode.org/Public/18.0.0/ucd/PropertyValueAliases.txt"
  - "https://api.dart.dev/dart-core/RegExp/RegExp.html"
  - "https://kotlinlang.org/api/core/kotlin-stdlib/kotlin.text/-regex/"
---
