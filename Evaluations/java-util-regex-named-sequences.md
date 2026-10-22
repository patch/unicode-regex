---
record_type: "evaluation"
provider: "java-util-regex"
feature: "named-sequences"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "N{name} delegates to an API returning one code point; the property grammar lists no named-sequence family. It therefore does not expose direct matching of a named multi-code-point sequence."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.html#codePointOf(java.lang.String)"
undocumented_syntax:
  - "\\N{TAMIL CONSONANT K}"
  - "\\p{Named_Sequence=TAMIL CONSONANT K}"
---
