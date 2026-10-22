---
record_type: "evaluation"
provider: "pcre2"
feature: "linebreak-matcher"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(*UTF)(*BSR_UNICODE)\\R"
  - "(*BSR_ANYCRLF)\\R"
  - "PCRE2_BSR_UNICODE"
  - "PCRE2_BSR_ANYCRLF"
notes: "R consumes an atomic CRLF or one LF/VT/FF/CR/NEL/LS/PS. Default BSR is Unicode unless changed when built; BSR_UNICODE makes it explicit. BSR_ANYCRLF narrows it to CR, LF or CRLF independently of anchors/dot/newline settings. In non-UTF 8-bit matching LS/PS cannot be represented; other widths and UTF modes include them. Unicode-property support is not required. R is invalid inside a class."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2syntax.3"
---
