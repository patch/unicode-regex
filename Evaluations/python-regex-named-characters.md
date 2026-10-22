---
record_type: "evaluation"
provider: "python-regex"
feature: "named-characters"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\N{EM DASH}"
notes: "Named-character escapes are explicitly limited to names known to Python. For the reviewed CPython release this is Unicode 17.0.0, separate from regex property-data version 18.0.0."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L901-L904"
  - "https://docs.python.org/3.15/library/unicodedata.html"
---
