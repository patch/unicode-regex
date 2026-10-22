---
record_type: "evaluation"
provider: "java-util-regex"
feature: "hex-notation"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\xE9"
  - "\\u00E9"
  - "\\x{1F600}"
  - "\\uD83D\\uDE00"
notes: "Braced x notation covers U+0000..U+10FFFF; four-digit u escapes can express a supplementary surrogate pair. Java source Unicode escapes are processed before regex parsing; source string \"\\\\x{1F600}\" passes regex \\x{1F600}. Escaped sequences can preserve code-point intent through normalization of literal pattern text."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#hex_h_h"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#bs"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#Hex_Notation_and_Normalization"
---
