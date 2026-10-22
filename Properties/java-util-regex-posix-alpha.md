---
record_type: "property"
provider: "java-util-regex"
name: "POSIX_Alpha"
aliases:
  - "Alpha"
value_type: "Binary"
values: []
inventory_scope: "Published list"
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#sum"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#UNICODE_CHARACTER_CLASS"
notes: "Bare selector \\p{Alpha} is ASCII by default; (?U) enables alphabetic characters. Unicode definition: \\p{IsAlphabetic}."
---
