---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "property-loose-matching"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The standard explicitly requires exact property and value aliases and forbids additional names/aliases. It specifically rejects ignored case, whitespace, hyphens/underscores and the Is prefix; i affects text matching, not parsing property names."
sources:
  - "https://262.ecma-international.org/17.0/#sec-runtime-semantics-unicodematchproperty-p"
  - "https://262.ecma-international.org/17.0/#sec-runtime-semantics-unicodematchpropertyvalue-p-v"
---
