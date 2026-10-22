---
record_type: "evaluation"
provider: "dotnet"
feature: "named-sequences"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The published regex escape/property grammars contain numeric code-unit escapes and GC/block membership, but no direct Unicode named-sequence escape or property. A literal sequence can still be supplied as ordinary pattern text."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-escapes-in-regular-expressions"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#unicode-category-or-unicode-block-p"
---
