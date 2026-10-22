---
record_type: "evaluation"
provider: "python-regex"
feature: "default-word-boundaries"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(?w)\\b"
  - "(?w)\\B"
  - "regex.WORD"
notes: "WORD switches \\b and \\B to the Unicode default word-boundary definition. The README states the behavior without separately naming a UAX #29 revision."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L1008-L1011"
---
