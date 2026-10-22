---
record_type: "evaluation"
provider: "dotnet"
feature: "script"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The documented property grammar accepts only General Category abbreviations and listed named blocks. No Script, sc or ISO 15924 selector inventory exists in that grammar. IsCyrillic/IsHiragana/IsKatakana are blocks and cannot substitute for Cyrillic/Hiragana/Katakana Script or Script_Extensions membership. Thus the IUC38 contextual Cyrillic-script replacement cannot be expressed with a documented script selector. A block-constrained illustration is recorded under Block."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#unicode-category-or-unicode-block-p"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#supported-named-blocks"
undocumented_syntax:
  - "\\p{Script=Cyrillic}"
  - "\\p{sc=Cyrl}"
  - "\\p{Cyrl}"
---
