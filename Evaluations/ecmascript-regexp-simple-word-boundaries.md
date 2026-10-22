---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "simple-word-boundaries"
status: "Partial"
mechanism: "Engine"
syntax:
  - "/\\b/"
  - "/\\B/"
  - "/\\b/iu"
  - "/\\b/iv"
notes: "Outside character classes \\b and \\B test transitions in the ASCII-based WordCharacters set, with the i+u/v casefold additions described for \\w. They do not follow the full Unicode word-character repertoire. Inside a class \\b means U+0008 BACKSPACE."
sources:
  - "https://262.ecma-international.org/17.0/#sec-compileassertion"
  - "https://262.ecma-international.org/17.0/#sec-runtime-semantics-wordcharacters-abstract-operation"
  - "https://262.ecma-international.org/17.0/#sec-compiletocharset"
uts_notes: "The built-in boundary is missing the Unicode Alphabetic, Mark, Nd, Pc and join-control behavior needed by RL1.4. Custom lookaround constructions are not documented as a built-in Unicode word-boundary mode."
---
