---
record_type: "evaluation"
provider: "java-util-regex"
feature: "property-loose-matching"
status: "Undocumented"
mechanism: "Undocumented"
syntax: []
notes: "Script lookup ignores case and recognizes UCD aliases. Block lookup ignores case and accepts canonical, space-removed and constant-identifier forms, including old/current names. General UAX #44 separator/whitespace equivalence across all property names and values is not specified."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.UnicodeScript.html#forName(java.lang.String)"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.UnicodeBlock.html#forName(java.lang.String)"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#Categories"
undocumented_syntax:
  - "\\p{general category = uppercase letter}"
  - "\\p{IsWhite-Space}"
---
