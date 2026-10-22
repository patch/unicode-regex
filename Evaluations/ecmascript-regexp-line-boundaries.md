---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "line-boundaries"
status: "Partial"
mechanism: "Engine"
syntax:
  - "/^/m"
  - "/$/m"
  - "/./"
  - "/./s"
  - "/(?m:^)/"
notes: "ECMAScript line terminators are LF, CR, LS and PS only. Multiline ^ matches after each, $ before each; the algorithms also allow a boundary between CR and LF. Without m the anchors require absolute input start/end; without s dot excludes exactly these four terminators, while s includes them. VT, FF and NEL do not acquire line-boundary semantics in any Unicode mode."
sources:
  - "https://262.ecma-international.org/17.0/#sec-line-terminators"
  - "https://262.ecma-international.org/17.0/#sec-compileassertion"
  - "https://262.ecma-international.org/17.0/#sec-compileatom"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#Line_Boundaries"
uts_notes: "RL1.6 explicitly names NEL, which ECMAScript omits, and its line-anchor discussion forbids a boundary inside CRLF. VT/FF are additional differences in the broader newline discussion and this feature's comparison scope; they are not among the six explicitly listed cases in the requirement clause."
---
