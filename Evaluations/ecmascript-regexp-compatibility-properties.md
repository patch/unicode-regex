---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "compatibility-properties"
status: "Partial"
mechanism: "Engine"
syntax:
  - "/\\p{Alphabetic}/u"
  - "/\\p{Lowercase}/u"
  - "/\\p{Uppercase}/u"
  - "/\\p{White_Space}/u"
  - "/\\p{gc=Nd}/u"
  - "/[\\p{gc=Nd}\\p{Hex_Digit}]/u"
  - "/[\\p{Alphabetic}\\p{M}\\p{Nd}\\p{Pc}\\p{Join_Control}]/u"
notes: "The documented property repertoire supplies Unicode alpha/lower/upper/punct/digit/space/cntrl components and the components for the other Annex C sets. No complete built-in Annex C or POSIX class family is supplied; \\d and \\w remain ASCII-based, and \\s is the ECMAScript whitespace set rather than White_Space. Explicit class compositions can express the illustrated Unicode xdigit and word sets; these are unexecuted constructions, not named compatibility classes."
sources:
  - "https://262.ecma-international.org/17.0/#table-binary-unicode-properties"
  - "https://262.ecma-international.org/17.0/#table-nonbinary-unicode-properties"
  - "https://262.ecma-international.org/17.0/#sec-compiletocharset"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#Compatibility_Properties"
uts_notes: "No RL1.2a claim was found. This score distinguishes the published compatibility facilities from the ability to build equivalent sets using general property/set syntax."
---
