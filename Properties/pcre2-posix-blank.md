---
record_type: "property"
provider: "pcre2"
name: "POSIX_blank"
aliases: []
value_type: "Binary"
values: []
inventory_scope: "Published list"
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2syntax.3"
notes: "Use [[:blank:]] and [[:^blank:]]. UCP: \\h = HT, SPACE, U+00A0, U+1680, U+180E, U+2000-U+200A, U+202F, U+205F, U+3000. Classes use ASCII tables by default, with possible locale changes for 128-255. (*UCP) enables Unicode definitions; (?aP) restricts all POSIX classes and implies aT. POSIX class names are separate from \\p property names."
---
