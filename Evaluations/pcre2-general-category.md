---
record_type: "evaluation"
provider: "pcre2"
feature: "general-category"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\p{L}"
  - "\\pL"
  - "\\p{Sc}"
  - "\\p{Sm}"
  - "\\p{Lc}"
  - "\\p{L&}"
  - "\\P{Cn}"
notes: "The inventory preserves all 30 subcategories and eight aggregate selectors, plus the L& alias of Lc. L means Letter, Sc Currency symbol and Sm Mathematical symbol. Only short codes are accepted; long labels are descriptive. Since 10.45, caseless Lu/Ll/Lt each behave as Lc; other properties are unaffected by caseless matching. Cs is meaningful for surrogate code units in non-UTF 16/32-bit matching, whereas surrogates are invalid UTF."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2syntax.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2unicode.3"
---
