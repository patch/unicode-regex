---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "linebreak-matcher"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The closed Unicode-mode grammar supplies no \\R or other dedicated Unicode linebreak token. \\R is invalid in u/v and a literal identity escape in legacy BMP mode, rather than a linebreak matcher. An explicit alternation such as CRLF first followed by LF/VT/FF/CR/NEL/LS/PS can be assembled, but is not a dedicated token."
sources:
  - "https://262.ecma-international.org/17.0/#sec-patterns"
  - "https://262.ecma-international.org/17.0/#sec-atomescape"
  - "https://262.ecma-international.org/17.0/#sec-line-terminators"
---
