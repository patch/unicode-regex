---
record_type: "evaluation"
provider: "python-regex"
feature: "set-operations"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(?V1)[\\p{L}--[A-Z]]"
  - "(?V1)[\\p{ASCII}&&\\p{Letter}]"
  - "(?V1)[[ab]||[cd]]"
  - "(?V1)[[ab]~~[bc]]"
notes: "Nested sets and set operators are VERSION1-only; (?V1) or regex.VERSION1 ensures this mode independently of regex.DEFAULT_VERSION. Explicit precedence is union, symmetric difference, intersection, difference, then implicit union, from lowest to highest."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L727-L760"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L87-L114"
---
