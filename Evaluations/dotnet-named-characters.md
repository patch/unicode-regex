---
record_type: "evaluation"
provider: "dotnet"
feature: "named-characters"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The published character-escape grammar provides numeric UTF-16 escapes and control escapes, but no Unicode N{name} character-name lookup escape."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-escapes-in-regular-expressions"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-language-quick-reference#character-escapes"
undocumented_syntax:
  - "\\N{LATIN SMALL LETTER E WITH ACUTE}"
---
