---
record_type: "evaluation"
provider: "python-re"
feature: "digit-class"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\d"
  - "\\D"
  - "(?a:\\d)"
notes: "For str patterns, decimal digits are General_Category=Nd; complements are available. ASCII mode restricts the class to 0-9."
sources:
  - "https://docs.python.org/3.15/library/re.html#regular-expression-syntax"
  - "https://github.com/python/cpython/blob/v3.15.1/Doc/library/re.rst"
---
