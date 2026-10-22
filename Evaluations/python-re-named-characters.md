---
record_type: "evaluation"
provider: "python-re"
feature: "named-characters"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\N{EM DASH}"
notes: "The regex parser accepts named characters in str patterns. Name data comes from the host Python Unicode database, documented as 17.0.0 for this review."
sources:
  - "https://docs.python.org/3.15/library/re.html#regular-expression-syntax"
  - "https://docs.python.org/3.15/library/unicodedata.html"
  - "https://github.com/python/cpython/blob/v3.15.1/Doc/library/re.rst"
---
