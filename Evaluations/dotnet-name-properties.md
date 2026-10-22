---
record_type: "evaluation"
provider: "dotnet"
feature: "name-properties"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "Name, Name_Alias, computed character names and code-point labels fall outside the documented GC/block property grammar. Named capture groups name regex groups, not Unicode characters; they do not establish Unicode name-property coverage."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#unicode-category-or-unicode-block-p"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-language-quick-reference#grouping-constructs"
---
