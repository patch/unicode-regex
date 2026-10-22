---
record_type: "evaluation"
provider: "python-re"
feature: "unicode-mode"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(?u)"
  - "(?a)"
  - "(?u:...)"
  - "(?a:...)"
  - "re.UNICODE"
  - "re.ASCII"
notes: "str patterns use Unicode by default; bytes patterns are a separate ASCII/locale interface. Unicode modes cannot make bytes patterns accept Unicode escapes."
sources:
  - "https://docs.python.org/3.15/library/re.html#regular-expression-syntax"
  - "https://github.com/python/cpython/blob/v3.15.1/Doc/library/re.rst"
---
