---
record_type: "evaluation"
provider: "python-re"
feature: "full-case-conversion"
status: "Supported"
mechanism: "Host API"
syntax:
  - "text.casefold()"
notes: "Python str.casefold provides Unicode default caseless conversion, including multi-character folds. This is a host operation; no regex-native case-conversion API is claimed."
sources:
  - "https://docs.python.org/3.15/builtins/stdtypes.html#str.casefold"
  - "https://docs.python.org/3.15/howto/unicode.html#comparing-strings"
---
