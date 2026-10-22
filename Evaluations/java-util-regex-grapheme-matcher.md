---
record_type: "evaluation"
provider: "java-util-regex"
feature: "grapheme-matcher"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\X"
notes: "X consumes an arbitrary Unicode extended grapheme cluster; it is not the single-code-point dot matcher. The documentation links UAX #29 and claims RL2.2 Extended Grapheme Clusters."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#sum"
---
