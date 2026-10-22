---
record_type: "property"
provider: "pcre2"
name: "POSIX_space"
aliases: []
value_type: "Binary"
values: []
inventory_scope: "Published list"
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2syntax.3"
notes: "Use [[:space:]] and [[:^space:]]. The published UCP mapping uses Xps = Z plus HT/LF/VT/FF/CR. This formula differs from the separately documented \\s formula (Z|\\h|\\v) at NEL (U+0085) and U+180E; the manual also calls them equal. Preserve this unresolved documentation discrepancy rather than infer actual matching. Classes use ASCII tables by default, with possible locale changes for 128-255. (*UCP) enables Unicode definitions; (?aP) restricts all POSIX classes and implies aT. POSIX class names are separate from \\p property names."
---
