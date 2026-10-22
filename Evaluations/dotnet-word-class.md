---
record_type: "evaluation"
provider: "dotnet"
feature: "word-class"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\w"
  - "\\W"
  - "[\\p{Ll}\\p{Lu}\\p{Lt}\\p{Lo}\\p{Lm}\\p{Mn}\\p{Nd}\\p{Pc}]"
  - "RegexOptions.ECMAScript"
notes: "Default w includes Ll/Lu/Lt/Lo/Lm/Mn/Nd/Pc; W complements it. ECMAScript documentation states [a-zA-Z_0-9]. Mc, Me and Join_Control are absent from the default published w definition; do not replace it with the broader UTS recommended word class."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#word-character-w"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#non-word-character-w"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-options#ecmascript-matching-behavior"
---
