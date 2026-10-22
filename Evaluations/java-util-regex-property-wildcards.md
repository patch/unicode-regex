---
record_type: "evaluation"
provider: "java-util-regex"
feature: "property-wildcards"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "Documented property values are fixed category/script/block names and aliases; property-value regex patterns and wildcard delimiters are outside this grammar."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#Wildcard_Properties"
undocumented_syntax:
  - "\\p{sc=/Lat.*/}"
---
