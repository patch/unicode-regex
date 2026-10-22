---
record_type: "evaluation"
provider: "python-regex"
feature: "property-syntax"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\p{General_Category=Letter}"
  - "\\p{gc=L}"
  - "\\p{gc:L}"
  - "\\p{Letter}"
  - "\\p{L}"
  - "\\P{gc=L}"
  - "\\p{^gc=L}"
  - "\\p{Script=Latin}"
  - "\\p{sc=Latn}"
  - "\\p{Latin}"
  - "\\p{IsLatin}"
  - "\\p{InBasicLatin}"
  - "\\p{Alphabetic=Yes}"
  - "\\p{Alphabetic=No}"
undocumented_syntax:
  - "\\pL"
  - "\\PL"
notes: "The manual documents = and : separators, positive/complemented forms, and short-name lookup in GC, Script, Block, binary order. Is selects script/binary and In selects blocks. Optional braces and arbitrary property=value aliases beyond the inventory are not documented."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L906-L929"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/docs/UnicodeProperties.rst"
---
