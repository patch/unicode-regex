---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "grapheme-matcher"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The closed regex grammar has no \\X or other arbitrary extended/legacy grapheme-cluster token. Dot is a code unit in BMP mode or a code point in u/v, not a grapheme. v emoji string properties recognize specific Unicode emoji sets rather than every grapheme cluster; a base-plus-mark construction would not implement current UAX #29 rules."
sources:
  - "https://262.ecma-international.org/17.0/#sec-patterns"
  - "https://262.ecma-international.org/17.0/#sec-pattern-semantics"
  - "https://262.ecma-international.org/17.0/#table-binary-unicode-properties-of-strings"
---
