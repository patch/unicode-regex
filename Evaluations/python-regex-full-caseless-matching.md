---
record_type: "evaluation"
provider: "python-regex"
feature: "full-caseless-matching"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(?fi)strasse"
  - "regex.FULLCASE | regex.IGNORECASE"
notes: "FULLCASE plus IGNORECASE provides full Unicode caseless matching in both version modes. VERSION1 enables FULLCASE by default; VERSION0 requires opting into it. FULLCASE alone does not enable caseless matching. The README demonstrates sharp-s versus ss in literals; class-specific multi-code-point fold behavior is not detailed."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L513-L525"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L78-L85"
---
