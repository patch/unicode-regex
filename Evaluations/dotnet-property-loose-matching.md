---
record_type: "evaluation"
provider: "dotnet"
feature: "property-loose-matching"
status: "Undocumented"
mechanism: "Undocumented"
syntax: []
notes: "The manual publishes exact category/block spellings and three explicit block alias pairs. It does not specify Unicode loose matching of case, whitespace, underscores or hyphens. IgnoreCase controls matched text; it is not evidence for property-name matching."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#supported-unicode-general-categories"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#supported-named-blocks"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-options#case-insensitive-matching"
undocumented_syntax:
  - "\\p{lu}"
  - "\\p{isgreek}"
  - "\\p{Is_Greek}"
  - "\\p{Is Basic Latin}"
---
