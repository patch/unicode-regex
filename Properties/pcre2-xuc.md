---
record_type: "property"
provider: "pcre2"
name: "Xuc"
aliases: []
value_type: "Binary"
values: []
inventory_scope: "Published list"
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2syntax.3"
notes: "PCRE2 extension: $, @, grave accent and code points at least U+00A0, excluding U+D800-U+DFFF. Matches characters representable by Universal Character Names, not the literal escape sequences. Use \\p{Xuc} or its \\P complement; UCP is not required for explicit property escapes."
---
