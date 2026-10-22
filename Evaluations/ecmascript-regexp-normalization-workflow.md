---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "normalization-workflow"
status: "Supported"
mechanism: "Host API"
syntax:
  - "text.normalize(\"NFC\")"
  - "text.normalize(\"NFD\")"
  - "text.normalize(\"NFKC\")"
  - "text.normalize(\"NFKD\")"
  - "new RegExp(RegExp.escape(literal.normalize(\"NFC\")), \"u\")"
notes: "String.prototype.normalize defaults to NFC and supports NFC/NFD/NFKC/NFKD using the latest Unicode normalization specification. Normalize subject text and deliberately designed literal pattern data consistently; RegExp.escape can safely quote normalized literal text. Normalizing arbitrary regex source may change meaning and is not assumed safe. This unexecuted construction is host preprocessing, not canonical-equivalence regex matching."
sources:
  - "https://262.ecma-international.org/17.0/#sec-string.prototype.normalize"
  - "https://262.ecma-international.org/17.0/#sec-regexp.escape"
---
