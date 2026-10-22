---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "full-properties"
status: "Partial"
mechanism: "Engine"
syntax:
  - "/\\p{gc=Sc}/u"
  - "/\\p{scx=Cyrl}/u"
  - "/\\p{VS}/u"
  - "/\\p{Dep}/u"
  - "/\\p{RGI_Emoji}/v"
notes: "The standard provides 63 properties, including Script_Extensions, Variation_Selector, Deprecated and seven emoji string properties. The closed tables exclude Numeric_Value/nv (so nv=10 is rejected), Numeric_Type, East_Asian_Width/ea (so ea=F is rejected), Age, Block, Name, Bidi_Class, break properties, mapping/normalization quick-check properties and other revision-25 required properties. UCD additions do not automatically extend the fixed property-name tables; e.g. IDS_Unary_Operator and ID_Compat_Math_Start/Continue are not accepted."
sources:
  - "https://262.ecma-international.org/17.0/#table-nonbinary-unicode-properties"
  - "https://262.ecma-international.org/17.0/#table-binary-unicode-properties"
  - "https://262.ecma-international.org/17.0/#table-binary-unicode-properties-of-strings"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#Full_Properties"
---
