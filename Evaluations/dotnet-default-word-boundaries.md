---
record_type: "evaluation"
provider: "dotnet"
feature: "default-word-boundaries"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The published boundary constructs define b/B through word versus non-word classes. The grammar provides no UAX #29 default-word-boundary option or alternative assertion; StringInfo's host grapheme segmentation does not supply word segmentation."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/anchors-in-regular-expressions#word-boundary-b"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-options"
---
