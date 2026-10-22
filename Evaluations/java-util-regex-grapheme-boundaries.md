---
record_type: "evaluation"
provider: "java-util-regex"
feature: "grapheme-boundaries"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\b{g}"
notes: "b{g} supplies zero-width extended-grapheme boundaries. The documentation does not list a B{g} complement."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#sum"
undocumented_syntax:
  - "\\B{g}"
---
