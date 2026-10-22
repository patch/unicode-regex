---
record_type: "evaluation"
provider: "java-util-regex"
feature: "digit-class"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(?U)\\d"
  - "(?U)\\D"
  - "(?-U:\\d)"
notes: "With U, d matches Unicode decimal digits (Nd/IsDigit); D complements it. Without U the documented digit shorthand is [0-9]."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#UNICODE_CHARACTER_CLASS"
---
