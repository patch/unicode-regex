---
record_type: "evaluation"
provider: "python-re"
feature: "word-class"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\w"
  - "\\W"
  - "(?a:\\w)"
notes: "Unicode word characters are str.isalnum plus U+005F underscore; an ASCII override and complement are available."
sources:
  - "https://docs.python.org/3.15/library/re.html#regular-expression-syntax"
  - "https://docs.python.org/3.15/builtins/stdtypes.html#str.isalnum"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#Compatibility_Properties"
uts_notes: "The word class differs from the Annex C recommendation, which also includes marks, connector punctuation, and join controls."
---
