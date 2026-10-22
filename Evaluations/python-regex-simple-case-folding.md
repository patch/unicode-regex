---
record_type: "evaluation"
provider: "python-regex"
feature: "simple-case-folding"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(?i-f:...)"
notes: "Simple Unicode folding uses IGNORECASE with FULLCASE disabled. VERSION0 has FULLCASE off by default; VERSION1 has it on. The scoped syntax makes that choice explicit."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L78-L85"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L41-L76"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L837-L844"
uts_notes: "Simple folding is explicitly supported. Complete property-closure details for RL1.5 remain undocumented."
---
