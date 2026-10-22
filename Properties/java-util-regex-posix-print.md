---
record_type: "property"
provider: "java-util-regex"
name: "POSIX_Print"
aliases:
  - "Print"
value_type: "Binary"
values: []
inventory_scope: "Published list"
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#sum"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#UNICODE_CHARACTER_CLASS"
notes: "Bare selector \\p{Print} is ASCII by default; (?U) enables Graph or Blank, excluding controls. Unicode definition: [\\p{Graph}\\p{Blank}&&[^\\p{Cntrl}]]."
---
