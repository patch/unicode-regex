---
record_type: "evaluation"
provider: "pcre2"
feature: "code-points"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(*UTF)."
  - "(*UTF)(?s:.)"
  - "(*UTF)\\x{1F600}"
notes: "UTF matching consumes whole code points for dot and quantifiers, including supplementary planes; dot excludes configured newlines unless DOTALL. X consumes a cluster instead. C deliberately consumes one code unit and can split UTF-8/16; it can be disabled at build/compile time and is unsupported by DFA and JIT in UTF-8/16. The default non-UTF 8/16-bit modes cannot represent the entire code-point range."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2unicode.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
---
