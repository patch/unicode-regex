---
record_type: "evaluation"
provider: "pcre2"
feature: "unicode-mode"
status: "Supported"
mechanism: "Engine"
syntax:
  - "PCRE2_UTF"
  - "(*UTF)"
  - "PCRE2_UCP"
  - "(*UCP)"
  - "PCRE2_MATCH_INVALID_UTF"
notes: "Upstream 10.49, with Unicode support built in (the default), has separate UTF and UCP controls. UTF selects UTF-8/16/32 for the library width; default matching treats each code unit as a character. UCP changes shorthands, POSIX classes and case processing; it is independent of UTF. Properties and X do not require UCP or UTF. NEVER_UTF/NEVER_UCP can prevent pattern opt-in. MATCH_INVALID_UTF implies UTF and makes invalid subject sequences nonmatching barriers. Wrappers can bundle older libraries and expose fewer options; this review does not assert 10.49 behavior for every wrapper."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2unicode.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2api.3"
---
