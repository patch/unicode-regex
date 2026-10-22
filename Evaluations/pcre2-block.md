---
record_type: "evaluation"
provider: "pcre2"
feature: "block"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The manual explicitly excludes Perl block properties such as InMusicalSymbols. Block/blk values are outside the documented named-value families. Cyrillic and Cyrillic_Extended_A blocks must not be substituted for Script or Script_Extensions; code-point ranges are possible but are not block-property selectors."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2compat.3"
undocumented_syntax:
  - "\\p{Block=Cyrillic}"
  - "\\p{blk=Cyrillic_Ext_A}"
  - "\\p{InMusicalSymbols}"
---
