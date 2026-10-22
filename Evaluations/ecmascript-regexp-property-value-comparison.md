---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "property-value-comparison"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The standard property grammar permits one literal property value or one lone binary/name value, with exact alias lookup; it supplies no comparison of two properties' values on the same code point. Set intersection compares membership, not property values."
sources:
  - "https://262.ecma-international.org/17.0/#sec-patterns"
  - "https://262.ecma-international.org/17.0/#sec-runtime-semantics-unicodematchpropertyvalue-p-v"
---
