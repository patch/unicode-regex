---
record_type: "evaluation"
provider: "pcre2"
feature: "named-sequence-lookup"
status: "Undocumented"
mechanism: "Undocumented"
syntax: []
notes: "The upstream C library documents no host name-to-Unicode-sequence lookup API. This depends on the embedding language or another library; neither N{U+...} numeric escapes nor capture-group names provide Unicode sequence-name lookup."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2api.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2compat.3"
---
