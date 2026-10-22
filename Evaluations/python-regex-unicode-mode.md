---
record_type: "evaluation"
provider: "python-regex"
feature: "unicode-mode"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(?u)"
  - "(?a)"
  - "regex.UNICODE"
  - "regex.ASCII"
notes: "str defaults to Unicode and bytes to ASCII. ASCII and UNICODE select the character-set mode; feature-specific version differences are documented on the affected features."
sources:
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L26-L39"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst#L41-L76"
---
