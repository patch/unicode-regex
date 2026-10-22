---
record_type: "evaluation"
provider: "dotnet"
feature: "unicode-mode"
status: "Supported"
mechanism: "Engine"
syntax:
  - "RegexOptions.None"
  - "RegexOptions.ECMAScript"
  - "RegexOptions.IgnoreCase"
  - "RegexOptions.CultureInvariant"
notes: "Default .NET matching uses Unicode categories for shorthands. ECMAScript is an API-only compatibility option with ASCII shorthand definitions; it does not mean the current ECMAScript RegExp standard or supply u/v modes. Casing is culture-sensitive by default. NonBacktracking, compiled and source-generated engines do not add Unicode scalar or grapheme modes."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-options#default-options"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-options#ecmascript-matching-behavior"
  - "https://learn.microsoft.com/en-us/dotnet/api/system.text.regularexpressions.generatedregexattribute?view=net-10.0"
---
