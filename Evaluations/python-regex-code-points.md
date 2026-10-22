---
record_type: "evaluation"
provider: "python-regex"
feature: "code-points"
status: "Supported"
mechanism: "Engine"
syntax:
  - "."
  - "\\U0001F600"
notes: "The package targets CPython Unicode code-point strings and documents a PyPy limitation outside ASCII. Supplementary escapes are inherited from re-compatible syntax; dot is a code-point matcher, while \\X is a separate grapheme matcher."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L11-L14"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L1-L4"
  - "https://docs.python.org/3.15/library/re.html#regular-expression-syntax"
  - "https://docs.python.org/3.15/howto/unicode.html#definitions"
---
