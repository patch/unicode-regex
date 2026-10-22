---
record_type: "evaluation"
provider: "java-util-regex"
feature: "script"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\p{script=Hiragana}"
  - "\\p{sc=Hira}"
  - "\\p{IsLatin}"
  - "\\P{sc=Latn}"
  - "(?x) е ( \\p{sc=Cyrl} ) и $"
  - "matcher.replaceAll(\"я$1\")"
notes: "Script names and aliases use UnicodeScript.forName. The inventory follows the 175 Java enum constants and their Unicode 17 aliases; Katakana_Or_Hiragana/Hrkt has no Java enum constant and is not added. Script matching remains distinct from Script_Extensions. The contextual example uses Cyrillic е/и/я, captures a Cyrillic code point and retains it through replacement $1. It combines documented constructs; no example was executed."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.UnicodeScript.html"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.UnicodeScript.html#forName(java.lang.String)"
  - "https://www.unicode.org/Public/17.0.0/ucd/PropertyValueAliases.txt"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Matcher.html#replaceAll(java.lang.String)"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Matcher.html#appendReplacement(java.lang.StringBuffer,java.lang.String)"
---
