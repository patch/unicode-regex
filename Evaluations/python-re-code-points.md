---
record_type: "evaluation"
provider: "python-re"
feature: "code-points"
status: "Supported"
mechanism: "Engine"
syntax:
  - "."
  - "(?s:.)"
  - "\\U0001F600"
notes: "Python Unicode strings are sequences of code points; Unicode patterns operate on those strings and accept supplementary-plane escapes. Dot excludes newline unless DOTALL is enabled."
sources:
  - "https://docs.python.org/3.15/library/re.html#regular-expression-syntax"
  - "https://docs.python.org/3.15/howto/unicode.html#definitions"
---
