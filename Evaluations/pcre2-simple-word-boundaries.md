---
record_type: "evaluation"
provider: "pcre2"
feature: "simple-word-boundaries"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(*UCP)\\b"
  - "(*UCP)\\B"
  - "(*UCP)(?aW)\\b"
  - "[[:<:]]"
  - "[[:>:]]"
notes: "b is the zero-width transition between w and W, or a subject edge adjacent to w; B is its complement. UCP therefore gives the documented Unicode word-class boundary; aW restores the table-based class. Legacy POSIX word-edge forms expand to b(?=w) and b(?<=w). This is distinct from default UAX #29 boundaries."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2unicode.3"
uts_notes: "UCP includes Mn but excludes Join_Control and some alphabetic marks. Full RL1.4 alignment is not established merely by a Unicode-aware b."
---
