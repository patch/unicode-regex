---
record_type: "evaluation"
provider: "python-regex"
feature: "digit-class"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\d"
  - "\\D"
  - "(?a)\\d"
  - "\\p{gc=Nd}"
notes: "The re-compatible Unicode decimal shorthand is available. POSIX digit is explicitly distinct and maps to posix_digit; do not merge these spellings in a comparison."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L1-L4"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L931-L946"
  - "https://docs.python.org/3.15/library/re.html#regular-expression-syntax"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/docs/UnicodeProperties.rst"
---
