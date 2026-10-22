---
record_type: "evaluation"
provider: "dotnet"
feature: "full-caseless-matching"
status: "Undocumented"
mechanism: "Undocumented"
syntax: []
notes: "IgnoreCase is documented through Unicode casing equivalences and expansion to character classes. No reviewed source promises multi-code-point full case-fold matches, such as sharp s versus ss, or explains full-fold behavior for literals, classes and backreferences. The documented table mechanism alone is not a full-folding claim."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/api/system.text.regularexpressions.generatedregexattribute?view=net-10.0"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-options#case-insensitive-matching"
---
