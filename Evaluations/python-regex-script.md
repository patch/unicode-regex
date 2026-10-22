---
record_type: "evaluation"
provider: "python-regex"
feature: "script"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\p{Script=Latin}"
  - "\\p{sc=Latn}"
  - "\\p{Latin}"
  - "\\p{IsLatin}"
notes: "Script and its abbreviated property/value aliases are documented. The inventory is unchanged since 2019-06-02; its listed script values are preserved as positive evidence without claiming a complete current repertoire."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/docs/UnicodeProperties.rst#L1108-L1262"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L906-L929"
---
