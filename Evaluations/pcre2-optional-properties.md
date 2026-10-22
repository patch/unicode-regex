---
record_type: "evaluation"
provider: "pcre2"
feature: "optional-properties"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\p{Xuc}"
  - "\\p{Xan}"
  - "\\p{Xps}"
  - "\\p{Xsp}"
  - "\\p{Xwd}"
notes: "Five provider extensions are documented: Xan=L|N; Xps/Xsp=Z plus HT/LF/VT/FF/CR; detailed Xwd=L|N|Mn|Pc; Xuc=$,@,grave accent and code points at least U+00A0 except surrogates. Xuc matches the character, not the textual Universal Character Name sequence. These are optional provider-derived sets, not support for all UTS optional examples, collation/exemplar data or standardized-variant sequences."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2syntax.3"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#optional_properties"
---
