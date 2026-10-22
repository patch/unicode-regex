---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "canonical-equivalence"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The specified pattern matcher compares code-point/code-unit sequences (and optional simple folds); it has no canonical-equivalence option or automatic normalization step. Canonically equivalent composed/decomposed text therefore needs a separately designed normalization workflow."
sources:
  - "https://262.ecma-international.org/17.0/#sec-pattern-semantics"
  - "https://262.ecma-international.org/17.0/#sec-runtime-semantics-charactersetmatcher-abstract-operation"
  - "https://262.ecma-international.org/17.0/#sec-runtime-semantics-canonicalize-ch"
---
