---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "full-caseless-matching"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The specification explicitly uses one-code-point simple folding and states that ß does not fold to ss or SS. String classes under v do not change this into full multi-code-point casefold matching."
sources:
  - "https://262.ecma-international.org/17.0/#sec-runtime-semantics-canonicalize-ch"
---
