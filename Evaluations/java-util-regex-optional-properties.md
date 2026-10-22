---
record_type: "evaluation"
provider: "java-util-regex"
feature: "optional-properties"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\p{javaJavaIdentifierStart}"
  - "\\p{javaUnicodeIdentifierPart}"
  - "\\p{javaIdentifierIgnorable}"
notes: "The documented java-methodname rule supplies provider-specific Unicode-derived classification properties. These are optional extensions, not evidence for the particular UTS examples such as UTS46_Status, collation/exemplar properties or standardized variants."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.html#isJavaIdentifierStart(int)"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.html#isUnicodeIdentifierPart(int)"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#optional_properties"
---
