---
record_type: "evaluation"
provider: "pcre2"
feature: "age"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "Age is outside the documented named-value families (Script, Script_Extensions and Bidi_Class), General Category codes and binary/property extensions. Neither exact-age nor cumulative-age selectors are supplied by the documented grammar."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2compat.3"
undocumented_syntax:
  - "\\p{Age=17.0}"
---
