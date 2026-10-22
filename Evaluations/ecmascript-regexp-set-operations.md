---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "set-operations"
status: "Supported"
mechanism: "Engine"
syntax:
  - "/[\\p{ASCII}&&\\p{Letter}]/v"
  - "/[\\p{Letter}--[A-Z]]/v"
  - "/[[A-Z][a-z]]/v"
notes: "v adds nested classes, adjacency union, && intersection and -- subtraction; repeated subtraction/intersection associates left. A single nesting level cannot mix these operators, so group mixed expressions in nested classes instead of relying on precedence. Operands may include finite strings; class ranges require individual code points. u alone has no &&/-- set operators."
sources:
  - "https://262.ecma-international.org/17.0/#sec-patterns"
  - "https://262.ecma-international.org/17.0/#sec-compiletocharset"
---
