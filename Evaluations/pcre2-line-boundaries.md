---
record_type: "evaluation"
provider: "pcre2"
feature: "line-boundaries"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(*UTF)(*ANY)(?m)^...$"
  - "(*UTF)(*ANY)."
  - "(*UTF)(*ANY)(?s:.)"
  - "PCRE2_NEWLINE_ANY"
  - "PCRE2_MULTILINE"
  - "PCRE2_DOTALL"
notes: "ANY recognizes LF, VT, FF, CR, NEL, LS, PS and CRLF, with CRLF preferred as one newline and no anchor between its components. Newline defaults are configured when PCRE2 is built, commonly LF; CR/LF/CRLF/ANYCRLF/ANY/NUL select alternatives. Multiline ^ matches after internal newlines and $ before newlines; ^ excludes the final empty line unless ALT_CIRCUMFLEX. Without multiline, $ also matches before a final newline unless DOLLAR_ENDONLY. Dot excludes the configured newline characters unless DOTALL; two dots are needed for CRLF under DOTALL. R has its own independent BSR control."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2api.3"
---
