---
record_type: "evaluation"
provider: "java-util-regex"
feature: "full-caseless-matching"
status: "Undocumented"
mechanism: "Undocumented"
syntax: []
notes: "UNICODE_CASE promises Unicode-aware caseless matching but does not document one-to-many folds such as sharp s versus ss. String.equalsFoldCase explicitly supports such folds for whole-string comparisons; its semantics are not claimed for Pattern."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#UNICODE_CASE"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/String.html#equalsFoldCase(java.lang.String)"
---
