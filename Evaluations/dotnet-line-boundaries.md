---
record_type: "evaluation"
provider: "dotnet"
feature: "line-boundaries"
status: "Partial"
mechanism: "Engine"
syntax:
  - "(?m)^.+$"
  - "(?s:.)"
  - "\\A"
  - "\\Z"
  - "\\z"
  - "\\r?$"
notes: "In stable .NET 10, dot excludes only LF; Singleline/s includes it. Multiline/m makes ^/$ recognize LF line starts/ends. Default $ and Z also allow a final LF; A/z are absolute string anchors. CR, VT, FF, NEL, LS and PS are ordinary characters for these line rules. CRLF is not atomic; the documented r?$ workaround consumes CR. AnyNewLine is explicitly .NET 11-only and is excluded from this stable review."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-options#multiline-mode"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-options#single-line-mode"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-options#anynewline-mode"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/anchors-in-regular-expressions"
uts_notes: "The stable release's LF-only behavior is a documented limitation against RL1.6."
---
