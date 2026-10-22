---
record_type: "evaluation"
provider: "dotnet"
feature: "code-points"
status: "Partial"
mechanism: "Engine"
syntax:
  - "\\uD83D\\uDE00"
  - "(?:[\\uD800-\\uDBFF][\\uDC00-\\uDFFF]|[^\\uD800-\\uDFFF])"
notes: "The documented u escape matches a UTF-16 code unit. Supplementary text can be matched explicitly as a surrogate-pair sequence; the second unexecuted example assembles a scalar-consuming alternative from documented groups/ranges. The documentation supplies no scalar-aware dot, category, range or quantifier mode. Rune/EnumerateRunes is a separate host scalar API."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-escapes-in-regular-expressions"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#positive-character-group--"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-encoding-introduction"
  - "https://learn.microsoft.com/en-us/dotnet/api/system.text.rune?view=net-10.0"
uts_notes: "The documented code-unit model and explicit surrogate construction do not establish transparent RL1.7 supplementary-character behavior."
---
