---
record_type: "evaluation"
provider: "java-util-regex"
feature: "named-sequence-lookup"
status: "Undocumented"
mechanism: "Undocumented"
syntax: []
notes: "The reviewed Character name APIs return a single code point or its name, not a named sequence. No public named-sequence lookup workflow was found in the reviewed Java SE documentation."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.html#codePointOf(java.lang.String)"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.html#getName(int)"
---
