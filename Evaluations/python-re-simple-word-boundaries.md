---
record_type: "evaluation"
provider: "python-re"
feature: "simple-word-boundaries"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\b"
  - "\\B"
  - "(?a:\\b)"
notes: "Word-character boundaries are transitions between the documented Unicode word class and its complement; an ASCII override is available."
sources:
  - "https://docs.python.org/3.15/library/re.html#regular-expression-syntax"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#Simple_Word_Boundaries"
uts_notes: "The word class omits combining marks and join controls required by RL1.4. Capability availability does not establish the complete UTS requirement."
---
