---
record_type: "property"
provider: "ecmascript-regexp"
name: "RGI_Emoji"
aliases: []
domain: "String"
value_type: "Binary"
values: []
inventory_scope: "Published list"
sources:
  - "https://262.ecma-international.org/17.0/#table-binary-unicode-properties-of-strings"
  - "https://262.ecma-international.org/17.0/#sec-compiletocharset"
  - "https://262.ecma-international.org/17.0/#sec-patterns-static-semantics-early-errors"
notes: "Positive membership uses \\p{RGI_Emoji} with v; u is insufficient. No aliases or explicit binary value assignments are accepted. \\P and a negated class are syntax errors when the operand may contain multi-code-point strings; this property is not an arbitrary grapheme matcher."
---
