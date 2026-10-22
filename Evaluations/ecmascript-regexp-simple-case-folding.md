---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "simple-case-folding"
status: "Supported"
mechanism: "Engine"
syntax:
  - "/[a-z]/iu"
  - "/[a-z]/iv"
  - "/(?i:[a-z])/u"
notes: "i combined with either u or v uses Unicode simple/common CaseFolding.txt mappings; literals, ranges and properties follow the standard's mode-specific closure/complement algorithms. Long s and Kelvin sign fold to ASCII letters. Without u/v, i uses one-code-unit uppercase conversion, rejects multi-unit results and excludes non-ASCII-to-ASCII conversions. No locale/Turkic casefold option is provided."
sources:
  - "https://262.ecma-international.org/17.0/#sec-runtime-semantics-canonicalize-ch"
  - "https://262.ecma-international.org/17.0/#sec-compiletocharset"
  - "https://262.ecma-international.org/17.0/#sec-charactercomplement"
uts_notes: "Availability of simple folding is documented. u and v differ in fold/complement ordering, especially \\P under i; no general revision-25 RL1.5 conformance finding is asserted."
---
