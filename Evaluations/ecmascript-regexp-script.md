---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "script"
status: "Supported"
mechanism: "Engine"
syntax:
  - "/\\p{Script=Latin}/u"
  - "/\\p{sc=Latn}/u"
  - "/\\P{sc=Cyrl}/u"
  - "/[\\p{sc=Hira}\\p{sc=Kana}\\p{sc=Hani}\\p{sc=Latn}\\p{sc=Zyyy}]/u"
  - "text.replace(/е(\\p{sc=Cyrl})и$/u, \"я$1\")"
notes: "An explicit Script/sc property name is required. The complete 179-value Unicode 18 alias inventory includes Arab/Arabic, Beng/Bengali, Deva/Devanagari, Egyp/Egyptian_Hieroglyphs, Ethi/Ethiopic, Grek/Greek and Hang/Hangul. Script assigns one primary script; Common and Inherited are not Script_Extensions. The contextual example uses Cyrillic е/и/я, captures one Cyrillic code point and retains it via replacement $1. No free-spacing x flag exists, so spaces from the historical illustrative pattern are omitted. These examples combine documented constructs and were not executed."
sources:
  - "https://262.ecma-international.org/17.0/#table-nonbinary-unicode-properties"
  - "https://262.ecma-international.org/17.0/#sec-runtime-semantics-unicodematchpropertyvalue-p-v"
  - "https://262.ecma-international.org/17.0/#sec-string.prototype.replace"
  - "https://262.ecma-international.org/17.0/#sec-getsubstitution"
  - "https://www.unicode.org/Public/18.0.0/ucd/PropertyValueAliases.txt"
---
