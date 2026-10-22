---
record_type: "evaluation"
provider: "java-util-regex"
feature: "script-extensions"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The documented property syntax accepts Script, Block, General Category and a listed set of boolean properties; it supplies no Script_Extensions family or membership selector."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
undocumented_syntax:
  - "\\p{scx=Hira}"
  - "\\p{Script_Extensions=Hiragana}"
---
