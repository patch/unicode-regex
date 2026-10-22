---
record_type: "property"
provider: "pcre2"
name: "Xsp"
aliases: []
value_type: "Binary"
values: []
inventory_scope: "Published list"
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2syntax.3"
notes: "Published PCRE2 extension formula: Z or HT/LF/VT/FF/CR (Perl space), stated to equal Xps. It omits NEL (U+0085) and U+180E, unlike the separately published \\s formula. The linked POSIX-space equivalence is therefore unresolved at those two characters. Use \\p{Xsp} or its \\P complement; UCP is not required for explicit property escapes."
---
