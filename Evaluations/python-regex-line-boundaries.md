---
record_type: "evaluation"
provider: "python-regex"
feature: "line-boundaries"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(?w)."
  - "(?wm)^"
  - "(?wm)$"
  - "(?ws)."
notes: "WORD recognizes CRLF, LF, VT, FF, CR, NEL, LS, and PS in Unicode mode, affecting dot and multiline anchors. Without WORD the documented separator is LF."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L720-L725"
---
