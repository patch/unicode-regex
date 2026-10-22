---
record_type: "property"
provider: "ecmascript-regexp"
name: "White_Space"
aliases:
  - "space"
value_type: "Binary"
values: []
inventory_scope: "Published list"
sources:
  - "https://262.ecma-international.org/17.0/#table-binary-unicode-properties"
  - "https://262.ecma-international.org/17.0/#sec-compiletocharset"
notes: "Use \\p{White_Space} or its listed alias with u or v; \\P{White_Space} complements membership. Binary values are implicit True; =Yes, =No, =True and =False forms are rejected by the standard grammar. Exact spelling is required. The sole listed short alias is space; WSpace is not accepted. This property differs from the ECMAScript \\s shorthand."
---
