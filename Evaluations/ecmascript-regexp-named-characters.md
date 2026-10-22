---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "named-characters"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The closed Unicode-mode escape grammar supplies code-point escapes but no \\N{...} named-character escape. A named capture (?<name>...) names a group, not a Unicode character. In legacy mode \\N can be an identity escape and is not a name lookup."
sources:
  - "https://262.ecma-international.org/17.0/#sec-patterns"
---
