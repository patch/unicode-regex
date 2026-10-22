---
record_type: "evaluation"
provider: "dotnet"
feature: "string-classes"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The documented character-class grammar consumes one character from a group/range, a shorthand or GC/block selector. It has no string-valued class members or string-set operators. Grouping/alternation can match sequences but does not establish UTS RL2.2 string classes."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-language-quick-reference#character-classes"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#positive-character-group--"
uts_notes: "No formal RL2.2 claim was found in the reviewed .NET regex documentation."
---
