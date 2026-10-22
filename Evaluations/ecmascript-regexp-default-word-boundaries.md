---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "default-word-boundaries"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The closed Assertion grammar has no UAX #29 default word-boundary mode; \\b/\\B use the ASCII-based WordCharacters set with limited simple-casefold additions. ECMA-402 host segmentation does not add a regex boundary assertion."
sources:
  - "https://262.ecma-international.org/17.0/#sec-patterns"
  - "https://262.ecma-international.org/17.0/#sec-compileassertion"
  - "https://262.ecma-international.org/17.0/#sec-runtime-semantics-wordcharacters-abstract-operation"
---
