---
record_type: "evaluation"
provider: "pcre2"
feature: "property-wildcards"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "Property descriptions allow ASCII letters/digits after removing permitted separators and use fixed names/values; the documented grammar has no regex or wildcard expression over property values."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
undocumented_syntax:
  - "\\p{sc=/.*Latin.*/}"
---
