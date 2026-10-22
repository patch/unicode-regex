---
record_type: "property"
provider: "ecmascript-regexp"
name: "Assigned"
aliases: []
value_type: "Binary"
values: []
inventory_scope: "Published list"
sources:
  - "https://262.ecma-international.org/17.0/#table-binary-unicode-properties"
  - "https://262.ecma-international.org/17.0/#sec-compiletocharset"
notes: "Use \\p{Assigned} or its listed alias with u or v; \\P{Assigned} complements membership. Binary values are implicit True; =Yes, =No, =True and =False forms are rejected by the standard grammar. Exact spelling is required. This ECMAScript extension is the complement of General_Category=Unassigned (Cn), rather than a separate UCD binary property."
---
