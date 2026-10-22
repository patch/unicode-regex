---
record_type: "evaluation"
provider: "dotnet"
feature: "grapheme-boundaries"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The closed anchor grammar provides string, line, contiguous-match and word-class boundaries, not a grapheme-boundary assertion. Host StringInfo.ParseCombiningCharacters supplies text-element start indexes, and StringInfo enumeration uses extended grapheme clusters from .NET 5; these do not create regex grapheme anchors."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/anchors-in-regular-expressions"
  - "https://learn.microsoft.com/en-us/dotnet/api/system.globalization.stringinfo.parsecombiningcharacters?view=net-10.0"
  - "https://learn.microsoft.com/en-us/dotnet/core/compatibility/globalization/5.0/uax29-compliant-grapheme-enumeration"
---
