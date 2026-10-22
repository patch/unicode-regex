---
record_type: "evaluation"
provider: "dotnet"
feature: "full-case-conversion"
status: "Undocumented"
mechanism: "Undocumented"
syntax: []
notes: "The host documents String.ToUpper/ToLower and invariant variants, but no reviewed API promises full default Unicode case-folded-text preprocessing. ToUpperInvariant/ToLowerInvariant are casing APIs, not evidence of full CaseFolding.txt mappings; culture-sensitive comparison also does not return folded text."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/api/system.string.toupperinvariant?view=net-10.0"
  - "https://learn.microsoft.com/en-us/dotnet/api/system.string.tolowerinvariant?view=net-10.0"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/best-practices-strings"
uts_notes: "RL2.4 is conditional on a case-conversion facility; this documentation gap is not a blanket finding about every conditional requirement."
---
