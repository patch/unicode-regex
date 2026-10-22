---
record_type: "evaluation"
provider: "python-regex"
feature: "named-sequences"
status: "Undocumented"
mechanism: "Undocumented"
syntax: []
notes: "The reviewed regex documentation does not establish direct named-sequence escape expansion or a named-sequence property. Host lookup is recorded in named-sequence-lookup."
sources:
  - "https://docs.python.org/3.15/library/unicodedata.html#unicodedata.lookup"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L901-L904"
undocumented_syntax:
  - "\\N{TAMIL CONSONANT K}"
  - "\\p{Named_Sequence=TAMIL CONSONANT K}"
---
