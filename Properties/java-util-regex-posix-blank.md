---
record_type: "property"
provider: "java-util-regex"
name: "POSIX_Blank"
aliases:
  - "Blank"
value_type: "Binary"
values: []
inventory_scope: "Published list"
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#sum"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#UNICODE_CHARACTER_CLASS"
notes: "Bare selector \\p{Blank} is ASCII by default; (?U) enables horizontal Unicode whitespace. Unicode definition: [\\p{IsWhite_Space}&&[^\\p{gc=Zl}\\p{gc=Zp}\\x0a\\x0b\\x0c\\x0d\\x85]]."
---
