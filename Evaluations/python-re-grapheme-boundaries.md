---
record_type: "evaluation"
provider: "python-re"
feature: "grapheme-boundaries"
status: "Undocumented"
mechanism: "Undocumented"
syntax: []
undocumented_syntax:
  - "\\b{g}"
  - "\\b{gcb}"
notes: "The manual describes word boundaries but no grapheme-boundary assertion. Availability of host grapheme iteration does not establish a regex boundary assertion."
sources:
  - "https://docs.python.org/3.15/library/re.html"
  - "https://docs.python.org/3.15/library/unicodedata.html#unicodedata.iter_graphemes"
---
