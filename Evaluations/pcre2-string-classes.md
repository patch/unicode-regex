---
record_type: "evaluation"
provider: "pcre2"
feature: "string-classes"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "Ordinary and extended character classes select one character from character/property/POSIX atoms. Their documented grammars provide no multi-code-point string member or string-property atom. Set operations do not change that domain. Alternation and X can match sequences outside a class, but do not supply RL2.2.1 string classes."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2syntax.3"
---
