---
record_type: "evaluation"
provider: "java-util-regex"
feature: "string-classes"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The documented class grammar contains characters, ranges, nested classes and property-based character sets; it has no arbitrary string-member construct. Alternation and CANON_EQ do not establish string-valued set operations."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#cc"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#sum"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#Character_Ranges_with_Strings"
uts_notes: "Revision 25 RL2.2 additionally requires character classes with strings. Java's unversioned claim names only Extended Grapheme Clusters, so retain it without extending it to this newer requirement."
---
