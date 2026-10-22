---
record_type: "evaluation"
provider: "java-util-regex"
feature: "code-points"
status: "Supported"
mechanism: "Engine"
syntax:
  - "."
  - "\\x{1F600}"
  - "[\\x{10000}-\\x{10FFFF}]"
notes: "The documented hexadecimal construct covers the full code-point range and recognizes supplementary characters, including equivalent surrogate-pair escapes. The engine claims Level 1 support. Host String and Matcher positions are UTF-16 code-unit indexes, so a supplementary character occupies two index positions."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#hex_h_h"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/String.html"
---
