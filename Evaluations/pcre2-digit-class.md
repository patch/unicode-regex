---
record_type: "evaluation"
provider: "pcre2"
feature: "digit-class"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(*UCP)\\d"
  - "(*UCP)\\D"
  - "(*UCP)(?aD)\\d"
  - "\\p{Nd}"
notes: "UCP d is General Category Nd (decimal digits), D its complement. Default d is ASCII; UTF alone does not change it. EXTRA_ASCII_BSD or (?aD) restores the default class under UCP, with (?-aD) undoing it. This control differs from aT, which affects POSIX digit/xdigit. Nondecimal Unicode numeric characters are not d."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2unicode.3"
---
