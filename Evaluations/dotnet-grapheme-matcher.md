---
record_type: "evaluation"
provider: "dotnet"
feature: "grapheme-matcher"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The documented regex grammar has no X or other arbitrary extended-grapheme matcher. The unexecuted construct (?>\\P{M}\\p{M}*) is only a base-plus-marks approximation and does not establish extended clusters, Hangul/emoji sequences or CRLF treatment. Separately, StringInfo.GetTextElementEnumerator returns host extended grapheme clusters from .NET 5; earlier Framework/Core behavior was less complete."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-language-quick-reference"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-escapes-in-regular-expressions"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/grouping-constructs-in-regular-expressions#atomic-groups"
  - "https://learn.microsoft.com/en-us/dotnet/core/compatibility/globalization/5.0/uax29-compliant-grapheme-enumeration"
---
