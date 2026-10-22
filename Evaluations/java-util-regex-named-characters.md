---
record_type: "evaluation"
provider: "java-util-regex"
feature: "named-characters"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\N{WHITE SMILING FACE}"
  - "\\N{LATIN SMALL LETTER E WITH ACUTE}"
notes: "N{name} resolves one character through Character.codePointOf using the Java Unicode 17.0 database. Standard UnicodeData names are accepted; Java-specific generated names and limited loose matching are qualified in name-properties."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.html#codePointOf(java.lang.String)"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.html"
---
