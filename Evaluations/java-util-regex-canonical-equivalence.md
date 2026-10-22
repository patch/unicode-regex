---
record_type: "evaluation"
provider: "java-util-regex"
feature: "canonical-equivalence"
status: "Supported"
mechanism: "Engine"
syntax:
  - "Pattern.compile(\"å\", Pattern.CANON_EQ)"
notes: "CANON_EQ compares complete canonical decompositions; it is off by default and has no embedded flag. This supports canonically equivalent composed/decomposed text, not compatibility equivalence. The API documents memory-exhaustion risk with large combining-mark sequences."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#CANON_EQ"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#compile(java.lang.String,int)"
---
