---
record_type: "evaluation"
provider: "python-re"
feature: "space-class"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\s"
  - "\\S"
  - "(?a:\\s)"
notes: "Unicode whitespace shorthand follows Python str.isspace; an ASCII override and complement are available."
sources:
  - "https://docs.python.org/3.15/library/re.html#regular-expression-syntax"
  - "https://docs.python.org/3.15/builtins/stdtypes.html#str.isspace"
uts_notes: "Python str.isspace uses General_Category=Zs or bidi class WS, B, or S. This is broader than Unicode White_Space, so exact Annex C equality is not provided by this shorthand."
---
