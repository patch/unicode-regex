---
record_type: "evaluation"
provider: "python-regex"
feature: "simple-word-boundaries"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\b"
  - "\\B"
  - "\\m"
  - "\\M"
  - "(?w)\\b"
notes: "Unicode word-character boundaries are documented. WORD enables the separately recorded default-Unicode word-boundary mechanism."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L846-L849"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L1008-L1011"
uts_notes: "The component and mark rules of the simple boundary mechanism are not enumerated. The documented default-boundary alternative is assessed separately."
---
