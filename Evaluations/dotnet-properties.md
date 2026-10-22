---
record_type: "evaluation"
provider: "dotnet"
feature: "properties"
status: "Partial"
mechanism: "Engine"
syntax:
  - "\\p{L}"
  - "\\P{Lu}"
  - "\\p{IsBasicLatin}"
notes: "The documented p/P repertoire is General Category abbreviations and the published named-block table. It excludes Script, Script_Extensions and the required binary-property selectors; GC Lu/Ll and whitespace shorthands must not be relabeled as the distinct Uppercase/Lowercase/White_Space properties."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#unicode-category-or-unicode-block-p"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#supported-unicode-general-categories"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#supported-named-blocks"
uts_notes: "Known repertoire limits prevent establishing the revision-25 RL1.2 minimum."
---
