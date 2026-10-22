---
record_type: "evaluation"
provider: "java-util-regex"
feature: "line-boundaries"
status: "Partial"
mechanism: "Engine"
syntax:
  - "."
  - "(?s:.)"
  - "(?m)^"
  - "(?m)$"
  - "(?d)."
  - "\\Z"
  - "\\z"
notes: "Anchors and dot recognize LF, CRLF, CR, NEL, LS and PS; VT and FF are absent from their terminator list. MULTILINE changes anchors, DOTALL includes terminators, and UNIX_LINES restricts terminators to LF. Dollar can precede a final terminator; z is absolute end. R separately includes VT/FF."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#lt"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#MULTILINE"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#DOTALL"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#UNIX_LINES"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#Line_Boundaries"
uts_notes: "Partial describes the feature's eight-ending comparison scope. The documented terminators cover the six mandatory RL1.6 cases; missing VT/FF should not itself be reported as a failure of that minimum."
---
