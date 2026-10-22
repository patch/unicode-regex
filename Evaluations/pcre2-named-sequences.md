---
record_type: "evaluation"
provider: "pcre2"
feature: "named-sequences"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "Direct N{name} is explicitly unsupported and the documented property/class grammar has no named multi-code-point sequence facility. Matching literal sequences or X is not named-sequence lookup."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2compat.3"
undocumented_syntax:
  - "\\N{TAMIL CONSONANT K}"
---
