---
record_type: "property"
provider: "pcre2"
name: "POSIX_graph"
aliases: []
value_type: "Binary"
values: []
inventory_scope: "Published list"
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2syntax.3"
notes: "Use [[:graph:]] and [[:^graph:]]. UCP: L|M|N|P|S|Cf except U+061C, U+180E and U+2066-U+2069. Classes use ASCII tables by default, with possible locale changes for 128-255. (*UCP) enables Unicode definitions; (?aP) restricts all POSIX classes and implies aT. POSIX class names are separate from \\p property names."
---
