---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "named-sequences"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "No named-sequence escape or Named_Sequence property exists in the standard's closed regex grammar and property tables. \\q{...} supplies literal finite strings in v, not Unicode named-sequence lookup; emoji property sets likewise are not arbitrary named sequences."
sources:
  - "https://262.ecma-international.org/17.0/#sec-patterns"
  - "https://262.ecma-international.org/17.0/#sec-runtime-semantics-unicodematchproperty-p"
---
