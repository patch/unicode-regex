---
record_type: "evaluation"
provider: "python-regex"
feature: "space-class"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\s"
  - "\\S"
  - "\\p{White_Space}"
  - "\\p{Horiz_Space}"
  - "\\p{Vert_Space}"
notes: "Unicode whitespace shorthand and its complement are available; the package also documents White_Space and horizontal/vertical-space selectors."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L1-L4"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L144-L147"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/docs/UnicodeProperties.rst"
uts_notes: "The README does not explicitly equate the shorthand with White_Space for this release; exact Annex C equality remains undocumented."
---
