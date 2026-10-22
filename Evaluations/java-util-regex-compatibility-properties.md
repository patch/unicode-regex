---
record_type: "evaluation"
provider: "java-util-regex"
feature: "compatibility-properties"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(?U)\\p{Lower}"
  - "(?U)\\p{Alpha}"
  - "(?U)\\p{XDigit}"
  - "(?U)\\w"
  - "\\p{ASCII}"
notes: "UNICODE_CHARACTER_CLASS documents Annex C-compatible definitions for the 13 POSIX classes and digit/space/word shorthands. The default POSIX classes are ASCII. Unicode XDigit includes every Nd decimal digit in addition to Hex_Digit, so it is broader than IsHex_Digit."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#UNICODE_CHARACTER_CLASS"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#Compatibility_Properties"
uts_notes: "The documentation explicitly claims Annex C conformance. It does not label its choice Standard Recommendation versus POSIX-compatible; retain the published definitions rather than infer the label."
---
