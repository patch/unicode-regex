---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "full-case-conversion"
status: "Undocumented"
mechanism: "Undocumented"
syntax: []
notes: "No public fully case-folded-string preprocessing operation was found in the reviewed ECMAScript standard. String.prototype.toLowerCase/toUpperCase implement full default case conversion, including SpecialCasing and expansions, but conversion is not default Unicode case folding. Locale-sensitive conversion belongs to ECMA-402 and likewise does not establish this workflow."
sources:
  - "https://262.ecma-international.org/17.0/#sec-string.prototype.tolowercase"
  - "https://262.ecma-international.org/17.0/#sec-string.prototype.touppercase"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#Default_Loose_Matches"
uts_notes: "RL2.4 is conditional on case conversion; do not infer regex full folding or a casefold preprocessing API from upper/lower conversion."
---
