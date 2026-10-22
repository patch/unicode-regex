---
record_type: "evaluation"
provider: "dotnet"
feature: "general-category"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\p{L}"
  - "\\p{Lu}"
  - "\\p{M}"
  - "\\p{Sc}"
  - "\\p{Sm}"
  - "\\P{Cn}"
notes: "The explicit inventory supplies 30 subcategories and seven aggregates L/M/N/P/S/Z/C. L means Letter, Sc Currency Symbol and Sm Math Symbol. Long descriptive names are labels, not documented regex aliases; LC/Cased_Letter is not listed. CharUnicodeInfo provides classification data; its reviewed version table covers historical .NET Framework only."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#supported-unicode-general-categories"
  - "https://learn.microsoft.com/en-us/dotnet/api/system.globalization.charunicodeinfo?view=net-10.0"
---
