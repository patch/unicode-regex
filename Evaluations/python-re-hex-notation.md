---
record_type: "evaluation"
provider: "python-re"
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
notes: "The parser accepts fixed-width Python escapes. Eight hex digits in \\U express supplementary code points directly; Unicode escapes require str patterns. ASCII escape spellings keep base-plus-mark code points explicit in source; automatic canonical-equivalence matching is assessed separately."
sources:
  - "https://docs.python.org/3.15/library/re.html#regular-expression-syntax"
  - "https://docs.python.org/3.15/reference/lexical_analysis.html#escape-sequences"
  - "https://github.com/python/cpython/blob/v3.15.1/Doc/library/re.rst"
---
