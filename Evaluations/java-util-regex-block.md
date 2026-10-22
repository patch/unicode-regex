---
record_type: "evaluation"
provider: "java-util-regex"
feature: "block"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\p{InBasicLatin}"
  - "\\p{block=BasicLatin}"
  - "\\p{blk=BASIC_LATIN}"
  - "\\P{InGreek}"
notes: "UnicodeBlock.forName supplies names. The inventory retains all 346 nondeprecated Java block constants, canonical names and space-removed forms. Legacy identifiers can differ from current block names; the deprecated SURROGATES_AREA compatibility constant is excluded."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.UnicodeBlock.html"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.UnicodeBlock.html#forName(java.lang.String)"
---
