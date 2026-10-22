---
record_type: "evaluation"
provider: "python-re"
feature: "simple-case-folding"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(?i)"
  - "(?i:Ü)"
  - "(?ai:[a-z])"
  - "re.IGNORECASE"
notes: "Unicode IGNORECASE matching is documented, including four additional non-ASCII matches for [a-z]/[A-Z]. ASCII-only matching is available as an override."
sources:
  - "https://docs.python.org/3.15/library/re.html#re.IGNORECASE"
uts_notes: "Exact simple/default folding tables and property closure required for the full RL1.5 assessment are not specified."
---
