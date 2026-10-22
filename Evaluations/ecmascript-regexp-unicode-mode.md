---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "unicode-mode"
status: "Supported"
mechanism: "Engine"
syntax:
  - "/./u"
  - "/./v"
  - "new RegExp(\"\\\\p{L}\", \"u\")"
notes: "No flags defaults to BMP/code-unit matching. u and v each enable Unicode code-point interpretation and property escapes; v additionally enables Unicode set and string features. u and v are mutually exclusive. i/m/s can be scoped as (?i:...), (?m:...), (?s:...) and disabled with (?i-m:...); u/v cannot be scoped. Constructor strings double regex backslashes; regex literals do not. The standard does not guarantee wrapper/runtime availability."
sources:
  - "https://262.ecma-international.org/17.0/#sec-pattern-semantics"
  - "https://262.ecma-international.org/17.0/#sec-regexpinitialize"
  - "https://262.ecma-international.org/17.0/#sec-patterns"
---
