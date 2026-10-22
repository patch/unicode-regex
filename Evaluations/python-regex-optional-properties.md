---
record_type: "evaluation"
provider: "python-regex"
feature: "optional-properties"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\p{Indic_Positional_Category=Left}"
  - "\\p{Indic_Syllabic_Category=Avagraha}"
notes: "The published inventory documents Indic_Positional_Category and Indic_Syllabic_Category. Other optional examples, including standardized variants and named-sequence regex properties, remain undocumented."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/docs/UnicodeProperties.rst"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#optional_properties"
---
