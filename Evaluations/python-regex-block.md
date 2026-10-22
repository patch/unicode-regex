---
record_type: "evaluation"
provider: "python-regex"
feature: "block"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\p{Block=BasicLatin}"
  - "\\p{blk=BasicLatin}"
  - "\\p{BasicLatin}"
  - "\\p{InBasicLatin}"
notes: "The manual documents Block matching, implicit block names, and the In prefix. Published block values and aliases come from the inventory unchanged since 2019-06-02 and do not establish a complete current repertoire."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/docs/UnicodeProperties.rst#L56-L357"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L906-L929"
---
