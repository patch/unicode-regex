---
record_type: "property"
provider: "java-util-regex"
name: "Punctuation"
aliases:
  - "IsPunctuation"
value_type: "Binary"
values: []
inventory_scope: "Published list"
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
notes: "Listed boolean selector: \\p{IsPunctuation} and its \\P complement. No U option is required; explicit =Yes/=No value syntax is not documented. Provider boolean alias for punctuation categories."
---
