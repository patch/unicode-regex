---
record_type: "evaluation"
provider: "pcre2"
feature: "named-characters"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The manual explicitly rejects Perl N{name} Unicode character-name lookup. Its supported N{U+...} is numeric code-point notation; bare N means a non-newline character."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2compat.3"
undocumented_syntax:
  - "\\N{WHITE SMILING FACE}"
---
