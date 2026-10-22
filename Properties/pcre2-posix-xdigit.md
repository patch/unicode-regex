---
record_type: "property"
provider: "pcre2"
name: "POSIX_xdigit"
aliases: []
value_type: "Binary"
values: []
inventory_scope: "Published list"
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2syntax.3"
notes: "Use [[:xdigit:]] and [[:^xdigit:]]. UCP: ASCII 0-9/A-F/a-f plus fullwidth U+FF10-U+FF19/U+FF21-U+FF26/U+FF41-U+FF46, not every Nd digit; (?aT) restores ASCII. Classes use ASCII tables by default, with possible locale changes for 128-255. (*UCP) enables Unicode definitions; (?aP) restricts all POSIX classes and implies aT. POSIX class names are separate from \\p property names."
---
