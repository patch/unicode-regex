---
record_type: "evaluation"
provider: "pcre2"
feature: "full-properties"
status: "Partial"
mechanism: "Engine"
syntax:
  - "\\p{L}"
  - "\\p{sc=Latn}"
  - "\\p{scx=Latn}"
  - "\\p{BC=AL}"
  - "\\p{Bidi_Control}"
notes: "PCRE2 documents a restricted subset: General Category, Script/Script_Extensions, Bidi_Class, Any, selected binary properties and extensions. Age, Block, names, Numeric_Value/nv, Numeric_Type/nt, East_Asian_Width/ea and the other enumerated/string-valued families required by the full revision-25 repertoire are outside the listed families. Numeric and width selectors cannot be inferred from category N or fullwidth POSIX xdigit. The exact latest binary list remains a documentation gap; required White_Space/Hex_Digit/Variation_Selector/Deprecated spellings and aliases are not promoted from UCD data."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2unicode.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2compat.3"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#Full_Properties"
undocumented_syntax:
  - "\\p{Numeric_Value=10}"
  - "\\p{nv=10}"
  - "\\p{East_Asian_Width=Fullwidth}"
  - "\\p{ea=F}"
---
