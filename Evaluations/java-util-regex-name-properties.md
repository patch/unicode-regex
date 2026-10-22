---
record_type: "evaluation"
provider: "java-util-regex"
feature: "name-properties"
status: "Partial"
mechanism: "Engine"
syntax:
  - "\\N{WHITE SMILING FACE}"
notes: "Named escapes delegate to Character.codePointOf. Lookup ignores case and trims outer whitespace. The API explicitly uses Java-generated block-plus-hex names for characters without UnicodeData names, including Hangul/ideographs; these differ from Unicode computed names. Complete Name_Alias and UAX #44 loose-name coverage is not specified."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.html#codePointOf(java.lang.String)"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.html#getName(int)"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#Name_Properties"
uts_notes: "The documented computed-name difference is a known limit on full RL2.5 coverage; it does not reduce support for the separate named-character-escape capability."
---
