---
record_type: "evaluation"
provider: "python-re"
feature: "line-boundaries"
status: "Partial"
mechanism: "Engine"
syntax:
  - "."
  - "(?s:.)"
  - "(?m)^"
  - "(?m)$"
notes: "The anchor and dot definitions use newline; no all-Unicode-line-ending mode is documented. DOTALL includes newline and MULTILINE changes anchor placement."
sources:
  - "https://docs.python.org/3.15/library/re.html#regular-expression-syntax"
  - "https://docs.python.org/3.15/library/re.html#re.MULTILINE"
  - "https://docs.python.org/3.15/library/re.html#re.DOTALL"
---
