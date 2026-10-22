---
record_type: "evaluation"
provider: "java-util-regex"
feature: "full-properties"
status: "Partial"
mechanism: "Engine"
syntax:
  - "\\p{gc=L}"
  - "\\p{sc=Latn}"
  - "\\p{InGreek}"
  - "\\p{IsEmoji}"
notes: "A substantial documented subset exists, but the listed families/selectors do not provide the full revision-25 repertoire. Numeric_Value/nv, East_Asian_Width/ea, Variation_Selector/VS and Deprecated/Dep have no selector in the published inventory; nor do Script_Extensions, Age, Bidi_Class, normalization quick checks or string-valued emoji properties. Host Character APIs do not automatically make their results regex properties."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#Full_Properties"
---
