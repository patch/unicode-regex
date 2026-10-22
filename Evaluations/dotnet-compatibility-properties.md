---
record_type: "evaluation"
provider: "dotnet"
feature: "compatibility-properties"
status: "Partial"
mechanism: "Engine"
syntax:
  - "\\d"
  - "\\s"
  - "\\w"
  - "\\p{L}"
  - "\\p{Ll}"
  - "\\p{Lu}"
  - "\\p{P}"
notes: "Unicode shorthands and several GC classes are documented, but the complete UTS Annex C compatibility repertoire is not. The property grammar does not offer the 13 named POSIX classes or Unicode Alphabetic/Hex_Digit binary selectors. In particular, w omits Mc/Me and Join_Control; L/Ll/Lu are not the derived Alphabetic/Lowercase/Uppercase properties."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-language-quick-reference#character-classes"
uts_notes: "Do not infer RL1.2a Standard Recommendation support from Unicode-aware shorthands alone."
---
