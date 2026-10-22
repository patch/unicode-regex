---
record_type: "evaluation"
provider: "pcre2"
feature: "full-case-conversion"
status: "Undocumented"
mechanism: "Undocumented"
syntax: []
notes: "No host API returning fully case-folded preprocessing text is documented for this host-independent provider. pcre2_substitute with SUBSTITUTE_EXTENDED has replacement \\L/\\U/\\l/\\u and uses only simple Unicode case transformations when UTF/UCP is set. set_substitute_case_callout can delegate replacement casing to external code (the manual illustrates ICU upper/lower/title conversion); it does not provide built-in full case folding and does not alter regex caseless matching. A wrapper may supply a separate full-fold API; Julia documents Unicode.normalize(s; casefold=true), but its current page does not label the folding full or specify the expansion repertoire."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2api.3"
  - "https://docs.julialang.org/en/v1/stdlib/Unicode/#Unicode.normalize"
---
