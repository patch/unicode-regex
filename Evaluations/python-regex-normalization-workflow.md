---
record_type: "evaluation"
provider: "python-regex"
feature: "normalization-workflow"
status: "Supported"
mechanism: "Host API"
syntax:
  - "unicodedata.normalize('NFD', text)"
notes: "Use the host Python normalization API, then design regex syntax for the chosen normalization form. Host Unicode data is 17.0.0 even though this package claims Unicode 18.0.0 properties."
sources:
  - "https://docs.python.org/3.15/library/unicodedata.html#unicodedata.normalize"
  - "https://docs.python.org/3.15/howto/unicode.html#comparing-strings"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L21-L24"
---
