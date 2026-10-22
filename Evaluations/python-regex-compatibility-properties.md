---
record_type: "evaluation"
provider: "python-regex"
feature: "compatibility-properties"
status: "Supported"
mechanism: "Engine"
syntax:
  - "[[:alpha:]]"
  - "[[:^alpha:]]"
  - "[[:digit:]]"
  - "\\p{posix_digit}"
  - "\\p{Word}"
notes: "POSIX bracket classes are documented, including the separate posix_alnum/digit/punct/xdigit definitions and Unicode property alternatives."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L931-L946"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/docs/UnicodeProperties.rst"
uts_notes: "A complete declaration of Standard Recommendation versus POSIX-compatible Annex C semantics is not supplied."
---
