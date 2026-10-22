---
record_type: "evaluation"
provider: "python-re"
feature: "grapheme-matcher"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The documented escape grammar rejects \\X; there is no documented arbitrary-grapheme regex matcher. Python 3.15 separately offers unicodedata.iter_graphemes as a host API."
sources:
  - "https://docs.python.org/3.15/library/re.html#regular-expression-syntax"
  - "https://docs.python.org/3.15/library/unicodedata.html#unicodedata.iter_graphemes"
---
