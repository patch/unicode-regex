---
record_type: "evaluation"
provider: "dotnet"
feature: "simple-case-folding"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(?i)é"
  - "(?i:É)"
  - "RegexOptions.IgnoreCase | RegexOptions.CultureInvariant"
notes: "IgnoreCase/i enables Unicode casing equivalences. It uses current-culture rules by default; CultureInvariant is API-only and selects invariant-culture rules. GeneratedRegex documents pattern expansion through a Unicode casing-equivalence table. Its table is selected at compile time by the target framework, whereas other engines select the running runtime's table."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-options#case-insensitive-matching"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-options#compare-using-the-invariant-culture"
  - "https://learn.microsoft.com/en-us/dotnet/api/system.text.regularexpressions.generatedregexattribute?view=net-10.0"
uts_notes: "Documented casing equivalence does not establish exact Unicode Simple_Case_Folding closure for every property/negated class. CultureInvariant alone does not enable IgnoreCase."
---
