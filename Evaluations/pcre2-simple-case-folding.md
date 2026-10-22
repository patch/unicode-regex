---
record_type: "evaluation"
provider: "pcre2"
feature: "simple-case-folding"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(*UTF)(?i)k"
  - "(*UCP)(?i)k"
  - "(*UTF)(?ir)k"
  - "(*UTF)(*TURKISH_CASING)(?i)i"
  - "PCRE2_CASELESS"
  - "PCRE2_EXTRA_CASELESS_RESTRICT"
  - "PCRE2_EXTRA_TURKISH_CASING"
notes: "CASELESS/(?i) uses Unicode case equivalence when UTF or UCP is set. Multiple single-code-point equivalents such as Greek sigma are included. Default k/K also match Kelvin sign and s/S match long s; EXTRA_CASELESS_RESTRICT/(?r) prevents ASCII/non-ASCII mixing. TURKISH_CASING instead pairs i with dotted capital I and I with dotless i, and cannot be combined with CASELESS_RESTRICT. Since 10.45 Lu/Ll/Lt match Lc under caseless mode; other property selectors are unchanged."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2unicode.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2api.3"
uts_notes: "The documented case-equivalence facility is supported. It is not a finding of complete RL1.5 closure for every Unicode property, and the Turkish/restricted options intentionally alter default equivalences."
---
