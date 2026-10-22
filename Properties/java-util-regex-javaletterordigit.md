---
record_type: "property"
provider: "java-util-regex"
name: "javaLetterOrDigit"
aliases: []
value_type: "Binary"
values: []
inventory_scope: "Documented rule"
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.html#isLetterOrDigit(int)"
notes: "Derived from Pattern's java-methodname rule for Character.isLetterOrDigit(int); no U option is specified. Pattern individually illustrates only javaLowerCase/javaUpperCase/javaWhitespace/javaMirrored. Other spellings follow the generic documentation rule rather than an individually enumerated selector list."
---
