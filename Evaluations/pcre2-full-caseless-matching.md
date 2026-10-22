---
record_type: "evaluation"
provider: "pcre2"
feature: "full-caseless-matching"
status: "Undocumented"
mechanism: "Undocumented"
syntax: []
notes: "Unicode caseless matching documents case equivalence between individual code points. The reviewed manuals do not explicitly document automatic one-to-many folds such as sharp s versus ss for literal patterns or classes. The API's simple case-transformation description concerns replacement-string casing; it does not resolve matching-fold semantics. Unicode case-insensitive support alone is insufficient to establish full multi-code-point matching."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2unicode.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2api.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
---
