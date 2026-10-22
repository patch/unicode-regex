---
record_type: "evaluation"
provider: "java-util-regex"
feature: "simple-word-boundaries"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(?U)\\b"
  - "(?U)\\B"
notes: "b/B use transitions between w/W and input boundaries; U supplies the Unicode word class. The default class is ASCII. This is separate from UAX #29 default word segmentation."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#sum"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
uts_notes: "The Unicode word class includes marks and join controls. Whether all RL1.4 rules for ignoring nonspacing marks are met is not specified by the transition-based definition."
---
