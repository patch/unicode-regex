---
record_type: "evaluation"
provider: "python-regex"
feature: "general-category"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\p{General_Category=Letter}"
  - "\\p{gc=L}"
  - "\\p{Lu}"
  - "\\P{L}"
notes: "The inventory lists all standard aggregate and two-letter categories with aliases, plus provider-specific selectors such as Assigned and L&. Values and aliases are in the property inventory."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/docs/UnicodeProperties.rst#L518-L557"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L906-L929"
---
