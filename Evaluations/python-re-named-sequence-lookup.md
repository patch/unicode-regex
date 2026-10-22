---
record_type: "evaluation"
provider: "python-re"
feature: "named-sequence-lookup"
status: "Supported"
mechanism: "Host API"
syntax:
  - "unicodedata.lookup('TAMIL CONSONANT K')"
notes: "Host unicodedata.lookup returns named sequences using the host Unicode database. The returned text can be escaped for literal pattern use; this does not establish direct regex sequence-name syntax."
sources:
  - "https://docs.python.org/3.15/library/unicodedata.html#unicodedata.lookup"
  - "https://docs.python.org/3.15/library/re.html#regular-expression-syntax"
  - "https://docs.python.org/3.15/library/re.html#re.escape"
---
