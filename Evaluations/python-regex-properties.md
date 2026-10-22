---
record_type: "evaluation"
provider: "python-regex"
feature: "properties"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\p{gc=L}"
  - "\\p{sc=Latin}"
  - "\\p{scx=Latin}"
  - "\\p{Any}"
  - "\\p{ASCII}"
  - "\\p{Assigned}"
notes: "The published inventory includes the minimum property names or equivalent selectors; Assigned is listed as a General_Category value and ASCII appears in README examples."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/docs/UnicodeProperties.rst"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L906-L929"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L727-L760"
uts_notes: "Complete alias and loose-matching semantics required for RL1.2 remain undocumented; property-loose-matching records that gap."
---
