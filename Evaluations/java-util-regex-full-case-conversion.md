---
record_type: "evaluation"
provider: "java-util-regex"
feature: "full-case-conversion"
status: "Undocumented"
mechanism: "Undocumented"
syntax: []
notes: "No public API returning a fully case-folded String is documented in the reviewed host APIs. String supplies upper/lower conversion and, since Java 26, equalsFoldCase/compareToFoldCase and UNICODE_CASEFOLD_ORDER for full Unicode folding comparisons. Those comparisons do not return preprocessing text and do not establish regex folding."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/String.html#equalsFoldCase(java.lang.String)"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/String.html#compareToFoldCase(java.lang.String)"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/String.html#toLowerCase(java.util.Locale)"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/String.html#toUpperCase(java.util.Locale)"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#Default_Loose_Matches"
uts_notes: "This assessment concerns the defined preprocessing workflow. Full-fold host comparisons are documented separately in these notes; upper/lower conversion is not asserted to be full default case folding."
---
