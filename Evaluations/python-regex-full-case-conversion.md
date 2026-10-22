---
record_type: "evaluation"
provider: "python-regex"
feature: "full-case-conversion"
status: "Supported"
mechanism: "Host API"
syntax:
  - "text.casefold()"
notes: "Python str.casefold supplies host Unicode 17.0.0 conversion. The package documents automatic folding against its own Unicode data but no separate conversion API."
sources:
  - "https://docs.python.org/3.15/builtins/stdtypes.html#str.casefold"
  - "https://docs.python.org/3.15/library/unicodedata.html"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L78-L85"
---
