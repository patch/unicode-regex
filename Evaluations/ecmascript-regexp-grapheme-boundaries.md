---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "grapheme-boundaries"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The regex Assertion grammar provides start/end, word boundaries and lookaround; it has no grapheme-boundary assertion. \\b remains based on WordCharacters rather than UAX #29 grapheme segmentation. The separate ECMA-402 Intl.Segmenter host API is outside this ECMA-262 RegExp assessment."
sources:
  - "https://262.ecma-international.org/17.0/#sec-patterns"
  - "https://262.ecma-international.org/17.0/#sec-compileassertion"
---
