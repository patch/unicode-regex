---
record_type: "property"
provider: "java-util-regex"
name: "POSIX_XDigit"
aliases:
  - "XDigit"
value_type: "Binary"
values: []
inventory_scope: "Published list"
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#sum"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#UNICODE_CHARACTER_CLASS"
notes: "Bare selector \\p{XDigit} is ASCII by default; (?U) enables all Unicode decimal digits or Hex_Digit characters. Unicode definition: [\\p{gc=Nd}\\p{IsHex_Digit}]."
---
