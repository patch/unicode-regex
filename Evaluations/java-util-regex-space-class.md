---
record_type: "evaluation"
provider: "java-util-regex"
feature: "space-class"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(?U)\\s"
  - "(?U)\\S"
  - "(?-U:\\s)"
  - "\\h"
  - "\\H"
  - "\\v"
  - "\\V"
notes: "With U, s uses White_Space; its default is ASCII space, HT, LF, VT, FF and CR. Independent h/v classes have explicit sets. The published h set includes U+180E; it must not be substituted for White_Space, whose current definition excludes that character."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#sum"
---
