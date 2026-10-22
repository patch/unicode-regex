---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "hex-notation"
status: "Supported"
mechanism: "Engine"
syntax:
  - "/\\u{1F600}/u"
  - "/\\uFFFF/"
  - "/\\uD83D\\uDE00/u"
  - "/\\xFF/"
notes: "Braced \\u{...} covers U+0000..U+10FFFF under u or v. Four-digit \\u escapes and two-digit \\x escapes are also provided; an adjacent escaped lead/trail surrogate pair denotes one code point in u/v. Numeric escapes preserve intended code-point sequences when literal source text could be normalized; arbitrary regex normalization is not implied."
sources:
  - "https://262.ecma-international.org/17.0/#sec-patterns"
  - "https://262.ecma-international.org/17.0/#sec-patterns-static-semantics-character-value"
---
