---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "properties"
status: "Supported"
mechanism: "Engine"
syntax:
  - "/\\p{General_Category=Letter}/u"
  - "/\\p{sc=Latn}/u"
  - "/\\p{scx=Cyrl}/u"
  - "/\\p{Alphabetic}/u"
  - "/\\p{ASCII}/u"
notes: "All revision-25 minimum property names are present in the closed standard tables, including Script_Extensions, Any, ASCII and Assigned. Property escapes require either u or v. Data follows the latest Unicode required by the standard; concrete implementation versions are not surveyed."
sources:
  - "https://262.ecma-international.org/17.0/#table-nonbinary-unicode-properties"
  - "https://262.ecma-international.org/17.0/#table-binary-unicode-properties"
  - "https://262.ecma-international.org/17.0/#sec-runtime-semantics-unicodematchproperty-p"
uts_notes: "The published superset-of-RL1.2 claim is unversioned and concerns repertoire. Exact aliases are deliberately strict rather than the loose matching required by UTS #18; consult the separate syntax/loose-matching records before inferring conformance."
---
