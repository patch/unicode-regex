---
record_type: "evaluation"
provider: "java-util-regex"
feature: "word-class"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(?U)\\w"
  - "(?U)\\W"
  - "(?-U:\\w)"
notes: "With U, w combines Alphabetic, Mn/Me/Mc marks, decimal digits, connector punctuation and Join_Control. Without U it is [a-zA-Z_0-9]. This differs from Python re's alphanumeric-plus-underscore definition."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#UNICODE_CHARACTER_CLASS"
---
