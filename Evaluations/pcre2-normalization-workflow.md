---
record_type: "evaluation"
provider: "pcre2"
feature: "normalization-workflow"
status: "Undocumented"
mechanism: "Undocumented"
syntax: []
notes: "PCRE2 is a reusable C library without a single host normalization API; none is documented in its API manual. Availability depends on the wrapper. Adjacent example: Julia Unicode.normalize(s, :NFD) is documented and can preprocess input before a deliberately NFD-compatible pattern. That Julia facility is not an engine normalization option or an assertion for every PCRE2 binding; arbitrary regex patterns should not simply be normalized."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2api.3"
  - "https://docs.julialang.org/en/v1/stdlib/Unicode/#Unicode.normalize"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#Canonical_Equivalents"
---
