---
record_type: "evaluation"
provider: "java-util-regex"
feature: "set-operations"
status: "Supported"
mechanism: "Engine"
syntax:
  - "[\\p{L}&&\\p{sc=Latin}]"
  - "[\\p{L}&&[^\\p{Lu}]]"
  - "[\\p{L}\\p{N}]"
notes: "Nested classes provide union and && intersection; intersection with a negated class gives subtraction. Documented precedence is escape, grouping, range, union, intersection. These operations act on character sets, not arbitrary string members."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#cc"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#sum"
---
