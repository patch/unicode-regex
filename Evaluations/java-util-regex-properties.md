---
record_type: "evaluation"
provider: "java-util-regex"
feature: "properties"
status: "Partial"
mechanism: "Engine"
syntax:
  - "\\p{gc=L}"
  - "\\p{sc=Latn}"
  - "\\p{IsAlphabetic}"
  - "\\p{IsWhite_Space}"
  - "\\p{IsNoncharacter_Code_Point}"
  - "\\p{ASCII}"
  - "\\p{IsAssigned}"
notes: "The published repertoire covers General Category, Script, Block and selected boolean properties. Script_Extensions and Default_Ignorable_Code_Point are outside the documented families/list; Any is not listed. The complete revision-25 minimum is therefore not established."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#Categories"
uts_notes: "Preserve the provider's Level 1 claim without treating it as verified revision-25 conformance. Its claim gives no UTS revision; current RL1.2 includes Script_Extensions and additional minimum selectors."
---
