---
record_type: "evaluation"
provider: "pcre2"
feature: "grapheme-matcher"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(*UTF)\\X"
  - "(*UTF)\\X{3}"
  - "(?>\\PM\\pM*)"
notes: "X consumes one nonempty extended grapheme cluster atomically, using documented UAX #29 rules for CRLF, Hangul, Extend/SpacingMark/ZWJ, Prepend, emoji ZWJ and regional-indicator pairing. It is not dot. It needs Unicode build support but no UCP option; UTF is required for full-range UTF-8/16 input. The final pattern is an unexecuted legacy-style base-plus-marks construction assembled from documented property/atomic syntax, not a replacement for the full X algorithm and it misses leading marks."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2unicode.3"
uts_notes: "The detailed prose does not state the Unicode revision of its segmentation algorithm or list the newer Indic-conjunct GB9c rule. Unicode 17.0 data support alone does not verify every current UAX #29 rule. This supports the documented extended-cluster capability without establishing complete RL2.2, which also includes classes containing strings."
---
