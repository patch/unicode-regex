---
record_type: "evaluation"
provider: "pcre2"
feature: "property-value-comparison"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The documented property syntax provides fixed name/value selectors and negation, not references to another property value or comparisons between two mappings for a code point."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
undocumented_syntax:
  - "\\p{toLowercase=@toUppercase@}"
---
