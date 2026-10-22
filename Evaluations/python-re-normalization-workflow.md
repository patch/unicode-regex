---
record_type: "evaluation"
provider: "python-re"
feature: "normalization-workflow"
status: "Supported"
mechanism: "Host API"
syntax:
  - "unicodedata.normalize('NFD', text)"
notes: "The host offers NFC, NFD, NFKC, and NFKD normalization. Prepare input and design a pattern for the chosen form; no claim that normalizing arbitrary regex source is semantics-preserving."
sources:
  - "https://docs.python.org/3.15/library/unicodedata.html#unicodedata.normalize"
  - "https://docs.python.org/3.15/howto/unicode.html#comparing-strings"
---
