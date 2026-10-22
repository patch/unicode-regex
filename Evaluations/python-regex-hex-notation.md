---
record_type: "evaluation"
provider: "python-regex"
feature: "hex-notation"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\x41"
  - "\\u0041"
  - "\\U0001F600"
undocumented_syntax:
  - "\\x{1F600}"
  - "\\u{1F600}"
notes: "The package declares compatibility with re; fixed-width Unicode escape syntax is inherited. A braced code-point escape spelling is not documented in the reviewed manual. ASCII escape spellings keep base-plus-mark code points explicit in source; automatic canonical-equivalence matching is assessed separately."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L1-L4"
  - "https://docs.python.org/3.15/library/re.html#regular-expression-syntax"
  - "https://docs.python.org/3.15/reference/lexical_analysis.html#escape-sequences"
---
