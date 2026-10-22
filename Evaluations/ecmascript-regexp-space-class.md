---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "space-class"
status: "Supported"
mechanism: "Engine"
syntax:
  - "/\\s/"
  - "/\\S/"
  - "/\\p{White_Space}/u"
notes: "In every mode \\s is the union of ECMAScript WhiteSpace and LineTerminator: General_Category=Zs plus U+0009 TAB, U+000B VT, U+000C FF, U+FEFF, U+000A LF, U+000D CR, U+2028 LS and U+2029 PS; \\S is its complement. There is no ASCII/Unicode whitespace toggle. It includes FEFF and excludes U+0085 NEL, so it differs from the separate Unicode White_Space property."
sources:
  - "https://262.ecma-international.org/17.0/#sec-compiletocharset"
  - "https://262.ecma-international.org/17.0/#sec-white-space"
  - "https://262.ecma-international.org/17.0/#sec-line-terminators"
uts_notes: "Unicode-aware whitespace shorthand is documented; exact Annex C equality with White_Space is not provided by \\s."
---
