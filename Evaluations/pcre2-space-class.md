---
record_type: "evaluation"
provider: "pcre2"
feature: "space-class"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(*UCP)\\s"
  - "(*UCP)\\S"
  - "(*UCP)(?aS)\\s"
  - "\\h"
  - "\\H"
  - "\\v"
  - "\\V"
  - "\\p{Xps}"
  - "\\p{Xsp}"
notes: "UCP s is Z or h or v; S is its complement. The published h list is U+0009, U+0020, U+00A0, U+1680, U+180E, U+2000-U+200A, U+202F, U+205F, U+3000; v is LF, VT, FF, CR, NEL, LS, PS. This formula includes U+180E, unlike modern White_Space. The manual also equates s with POSIX space/Xps, but the published Xps/Xsp formula (Z plus HT/LF/VT/FF/CR) omits both NEL (U+0085) and U+180E. Actual matching at those two characters remains unresolved from these conflicting definitions. h/v and their complements are Unicode-aware without UCP, subject to library range. Default s is HT/LF/VT/FF/CR/SPACE in the C locale; other locales can change low-valued characters. EXTRA_ASCII_BSS/(?aS) restores the default s under UCP."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2unicode.3"
---
