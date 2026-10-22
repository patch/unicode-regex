---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "string-classes"
status: "Supported"
mechanism: "Engine"
syntax:
  - "/[\\q{ab|cd}x]/v"
  - "/[\\q{ab|cd}&&\\q{cd|ef}]/v"
  - "/[\\p{RGI_Emoji}--\\p{Basic_Emoji}]/v"
notes: "v permits finite string members through \\q{...|...} and the seven listed emoji string properties, with union, intersection and subtraction. Empty strings are allowed by the class-string grammar. Longer members are tried before shorter members with normal backtracking. Negated classes and \\P cannot operate on sets that may contain multi-code-point strings; u alone does not support these constructs. These unexecuted examples use documented productions."
sources:
  - "https://262.ecma-international.org/17.0/#sec-patterns"
  - "https://262.ecma-international.org/17.0/#sec-patterns-static-semantics-early-errors"
  - "https://262.ecma-international.org/17.0/#sec-compileatom"
  - "https://262.ecma-international.org/17.0/#sec-compileclasssetstring"
uts_notes: "This documents string classes, one component of RL2.2. It does not supply arbitrary extended grapheme matching/boundaries or establish the full requirement."
---
