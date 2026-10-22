---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "word-class"
status: "Partial"
mechanism: "Engine"
syntax:
  - "/\\w/"
  - "/\\W/"
  - "/\\w/iu"
  - "/\\w/iv"
notes: "The base set is [A-Za-z0-9_]. With both i and u/v, it additionally includes code points whose simple case fold is an ASCII word character, including long s U+017F and Kelvin sign U+212A. u or v alone does not make \\w include general Unicode letters, marks, decimal digits or join controls. No option supplies the complete Annex C Unicode word class."
sources:
  - "https://262.ecma-international.org/17.0/#sec-runtime-semantics-wordcharacters-abstract-operation"
  - "https://262.ecma-international.org/17.0/#sec-runtime-semantics-canonicalize-ch"
  - "https://262.ecma-international.org/17.0/#sec-compiletocharset"
uts_notes: "The Unicode casefold extension is a documented subset, not the required Alphabetic + Mark + Nd + Pc + Join_Control word repertoire."
---
