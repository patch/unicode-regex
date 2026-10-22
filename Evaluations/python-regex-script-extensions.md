---
record_type: "evaluation"
provider: "python-regex"
feature: "script-extensions"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\p{Script_Extensions=Cyrillic}"
  - "\\p{scx=Cyrl}"
notes: "The inventory explicitly lists Script_Extensions, alias scx, and script-value aliases. Its 2019-06-02 named values and multi-script data sets are stored separately; combined data sets are not presented as accepted selector spellings. Current value-list completeness remains undocumented."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/docs/UnicodeProperties.rst#L1264-L1465"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L906-L929"
---
