---
record_type: "evaluation"
provider: "pcre2"
feature: "canonical-equivalence"
status: "Undocumented"
mechanism: "Undocumented"
syntax: []
notes: "No automatic canonical-equivalence option or normalization behavior was found in the release-pinned pattern, Unicode or API manuals. X recognizes grapheme clusters but does not establish equivalence between precomposed and decomposed text. Host preprocessing is a separate workflow."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2unicode.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2api.3"
---
