---
record_type: provider
name: java.util.regex
provider_type: Engine
iuc38: true
utw2026: true
documentation: https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html
unicode_review_version: "27.0.1"
unicode_version: "17.0.0"
unicode_host_version: "17.0.0"
release_date: "2026-10-20"
unicode_review_date: "2026-10-22"
unicode_scope: "Java SE 27 Pattern API and Java SE host workflows; Oracle JDK 27.0.1 release documentation; all documented options."
unicode_claim: "Claims UTS #18 Level 1 plus RL2.1 canonical equivalence and RL2.2 extended grapheme clusters. No UTS revision is specified; do not extend that claim to revision-25 string classes or infer current full conformance."
property_summary: "General_Category, Script, Block; 20 listed Is-prefixed boolean selectors; 13 POSIX classes; java-methodname character classifications."
property_inventory_notes: "60 inventory records: 36 explicit/family entries and 24 Java classification selectors derived from Pattern's generic Character.is-method rule. Only four java selectors are individually illustrated. Script values/aliases follow the 175 Java enum constants and referenced Unicode 17 data; 346 nondeprecated block fields supply block values. No implementation inspection or provider tests; unlisted aliases and structural Character validity/surrogate helpers are not inferred."
unicode_notes: "Documentation-only review. Unicode 17.0 follows Character. Uppercase U changes shorthand/POSIX classes and implies lowercase u; caseless matching still needs i. CANON_EQ is API-only. Oracle also publishes a 27.0.1.0.1 timezone BPR for this API level; its listed changes do not alter regex support. Host full-fold comparisons do not establish regex folding or a case-folded-text preprocessing API."
unicode_sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.html"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.UnicodeScript.html"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.UnicodeBlock.html"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/String.html"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/text/Normalizer.html"
  - "https://www.oracle.com/java/technologies/javase/27-0-1-relnotes.html"
  - "https://www.oracle.com/java/technologies/downloads/"
  - "https://www.unicode.org/Public/17.0.0/ucd/PropertyValueAliases.txt"
rank: 4
score: 9.51
ranking_language_syntax: []
ranking_included_api:
  - "Java"
  - "Kotlin (JVM)"
  - "Scala (JVM)"
  - "CFML (Lucee)"
ranking_add_on_library: []
---
