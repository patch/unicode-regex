---
record_type: "evaluation"
provider: "java-util-regex"
feature: "linebreak-matcher"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\R"
notes: "R consumes CRLF as one alternative, or LF, VT, FF, CR, NEL, LS or PS. Unlike the anchor/dot terminator list, this includes VT and FF."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#sum"
---
