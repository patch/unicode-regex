---
record_type: "evaluation"
provider: "dotnet"
feature: "simple-word-boundaries"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\b"
  - "\\B"
  - "\\b\\w+\\b"
  - "RegexOptions.ECMAScript"
notes: "The anchors manual defines b at a w/W transition or a string edge next to a word character; B is its complement. The linked w definition is Unicode-category based by default and becomes ASCII-oriented under ECMAScript. This is the documented word-class model, distinct from UAX #29 default word segmentation."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/anchors-in-regular-expressions#word-boundary-b"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#word-character-w"
uts_notes: "The published w list omits Join_Control. The reviewed prose does not independently specify join-control treatment in the boundary implementation or suppression inside grapheme clusters, so exact RL1.4 alignment remains undocumented."
---
