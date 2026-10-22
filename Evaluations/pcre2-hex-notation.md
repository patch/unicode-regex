---
record_type: "evaluation"
provider: "pcre2"
feature: "hex-notation"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(*UTF)\\x{1F600}"
  - "(*UTF)\\N{U+1F600}"
  - "\\xE9"
  - "PCRE2_ALT_BSUX: \\u00E9"
  - "PCRE2_UTF with compile-context PCRE2_EXTRA_ALT_BSUX: \\u{1F600}"
notes: "Braced x expresses supplementary code points in UTF mode. N{U+...} is numeric notation, not Unicode name lookup; it is UTF-only and unavailable in EBCDIC. Unbraced x reads one or two hex digits normally; ALT_BSUX requires exactly two, disables braced x and adds four-digit u; EXTRA_ALT_BSUX also adds braced u, with no whitespace inside its braces. Set the extra option through pcre2_set_compile_extra_options(); UTF is a separate ordinary compile flag, not combined with it in one bitmask. Neither alternative option makes U followed by eight digits a Unicode escape. Raw regex notation is shown; C string literals double backslashes. Numeric escapes preserve the intended sequence if literal pattern text might be normalized."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2syntax.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2unicode.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2api.3"
---
