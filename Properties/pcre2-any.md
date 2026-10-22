---
record_type: "property"
provider: "pcre2"
name: "Any"
aliases: []
value_type: "Binary"
values: []
inventory_scope: "Published list"
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2syntax.3"
notes: "Matches any character, including newline. \\P{Any} always fails. UTF validates the Unicode domain; non-UTF 32-bit matching also permits values above U+10FFFF. No explicit =Yes/=No forms are documented."
---
