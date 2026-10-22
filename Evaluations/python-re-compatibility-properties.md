---
record_type: "evaluation"
provider: "python-re"
feature: "compatibility-properties"
status: "Partial"
mechanism: "Engine"
syntax:
  - "\\d"
  - "\\D"
  - "\\s"
  - "\\S"
  - "\\w"
  - "\\W"
notes: "Decimal digits are exposed, but the shorthand repertoire does not provide all Annex C classes. Space uses str.isspace and word uses str.isalnum plus underscore; no RL1.2a conformance claim is documented."
sources:
  - "https://docs.python.org/3.15/library/re.html#regular-expression-syntax"
  - "https://docs.python.org/3.15/builtins/stdtypes.html#str.isspace"
  - "https://docs.python.org/3.15/builtins/stdtypes.html#str.isalnum"
---
