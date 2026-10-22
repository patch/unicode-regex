---
record_type: "evaluation"
provider: "java-util-regex"
feature: "unicode-mode"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(?U)\\w"
  - "(?iu)é"
  - "(?iU)é"
  - "Pattern.UNICODE_CHARACTER_CLASS"
  - "Pattern.UNICODE_CASE"
notes: "Unicode literals and explicit properties need no Unicode flag. Uppercase U switches shorthand/POSIX classes to Unicode and implies lowercase u; lowercase u affects folding but needs i to enable caseless matching. Scoped options and -U/-u overrides are available."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#UNICODE_CHARACTER_CLASS"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#UNICODE_CASE"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#CASE_INSENSITIVE"
---
