---
record_type: "evaluation"
provider: "python-regex"
feature: "word-class"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\w"
  - "\\W"
  - "\\p{Word}"
  - "(?a)\\w"
notes: "Unicode word-character matching and its complement are documented; the inventory separately exposes Word."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L846-L849"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/docs/UnicodeProperties.rst"
uts_notes: "The README describes UAX #29 alignment but does not enumerate component properties or establish equality between the shorthand, Word selector, and Annex C formula."
---
