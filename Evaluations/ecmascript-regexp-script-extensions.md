---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "script-extensions"
status: "Supported"
mechanism: "Engine"
syntax:
  - "/\\p{Script_Extensions=Cyrillic}/u"
  - "/\\p{scx=Cyrl}/u"
  - "/\\P{scx=Cyrl}/u"
notes: "Matches membership in the Unicode Script_Extensions set, using the same 179 Unicode 18 named values and aliases as Script. Script/sc, Script_Extensions/scx and Block are distinct; a code point shared among scripts can match more than one scx selector. Multi-script data combinations are not accepted as combined selector values. Bare script values are rejected."
sources:
  - "https://262.ecma-international.org/17.0/#table-nonbinary-unicode-properties"
  - "https://262.ecma-international.org/17.0/#sec-runtime-semantics-unicodematchpropertyvalue-p-v"
  - "https://www.unicode.org/reports/tr44/tr44-38.html#Script_Extensions"
  - "https://www.unicode.org/Public/18.0.0/ucd/PropertyValueAliases.txt"
---
