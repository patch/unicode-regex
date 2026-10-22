---
record_type: "evaluation"
provider: "dotnet"
feature: "named-sequence-lookup"
status: "Undocumented"
mechanism: "Undocumented"
syntax: []
notes: "No reviewed general-purpose .NET host API performs Unicode named-sequence lookup. StringInfo segments existing text and Rune represents scalar values; neither is a name-to-sequence database. Platform-specific ICU bindings are outside this provider review."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/api/system.globalization.stringinfo?view=net-10.0"
  - "https://learn.microsoft.com/en-us/dotnet/api/system.text.rune?view=net-10.0"
---
