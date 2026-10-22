---
record_type: "evaluation"
provider: "pcre2"
feature: "grapheme-boundaries"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The documented zero-width assertions include word boundaries, anchors and lookarounds but no dedicated extended grapheme-cluster boundary escape. X consumes a cluster and is not itself a zero-width boundary."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2syntax.3"
undocumented_syntax:
  - "\\b{g}"
---
