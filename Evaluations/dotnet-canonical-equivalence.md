---
record_type: "evaluation"
provider: "dotnet"
feature: "canonical-equivalence"
status: "Undocumented"
mechanism: "Undocumented"
syntax: []
notes: "The property documentation recommends String.Normalize before matching. It does not document automatic equivalence between composed and decomposed regex input/pattern text. The options page's term canonical behavior distinguishes the normal dialect from ECMAScript; it is not a UTS canonical-equivalence claim."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#unicode-category-or-unicode-block-p"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-options#default-options"
  - "https://learn.microsoft.com/en-us/dotnet/api/system.string.normalize?view=net-10.0"
---
