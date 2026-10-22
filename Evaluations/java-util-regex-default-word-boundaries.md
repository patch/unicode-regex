---
record_type: "evaluation"
provider: "java-util-regex"
feature: "default-word-boundaries"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The documented b/B mechanism uses w/W transitions, and no UAX #29 default-word-boundary regex mode is defined. java.text.BreakIterator provides a separate, locale-sensitive host segmentation API; it is not a regex boundary option."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#sum"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/text/BreakIterator.html"
undocumented_syntax:
  - "\\b{w}"
---
