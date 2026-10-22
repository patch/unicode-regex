---
record_type: "evaluation"
provider: "dotnet"
feature: "space-class"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\s"
  - "\\S"
  - "[\\f\\n\\r\\t\\v\\x85\\p{Z}]"
  - "RegexOptions.ECMAScript"
notes: "Default s is the union of Zs/Zl/Zp with TAB, LF, VT, FF, CR and NEL; S complements that class. ECMAScript uses [ \\f\\n\\r\\t\\v] and its complement. This documented whitespace class does not make White_Space/WSpace or explicit binary Yes/No forms accepted property names."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#whitespace-character-s"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#non-whitespace-character-s"
---
