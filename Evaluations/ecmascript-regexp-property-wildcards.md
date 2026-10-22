---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "property-wildcards"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The property grammar accepts exact ASCII-letter/underscore/digit names and values and requires membership in the specified tables/UCD alias list; no wildcard pattern can occur in a property value. Ordinary text wildcards and v set operations do not provide property-value wildcarding."
sources:
  - "https://262.ecma-international.org/17.0/#sec-patterns"
  - "https://262.ecma-international.org/17.0/#sec-patterns-static-semantics-early-errors"
  - "https://262.ecma-international.org/17.0/#sec-runtime-semantics-unicodematchpropertyvalue-p-v"
---
