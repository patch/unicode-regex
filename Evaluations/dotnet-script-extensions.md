---
record_type: "evaluation"
provider: "dotnet"
feature: "script-extensions"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "Script_Extensions/scx falls outside the documented GC/block property grammar. A block such as IsCyrillic covers a contiguous range, not the set of scripts associated with each code point; there is no documented scx value or alias inventory."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#unicode-category-or-unicode-block-p"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#supported-named-blocks"
undocumented_syntax:
  - "\\p{Script_Extensions=Cyrillic}"
  - "\\p{scx=Cyrl}"
---
