---
record_type: "evaluation"
provider: "pcre2"
feature: "set-operations"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(?[\\p{L} - [QW]])"
  - "(?[\\p{scx=Thai} & \\p{Nd}])"
  - "PCRE2_ALT_EXTENDED_CLASS: [\\p{L}--[QW]]"
  - "PCRE2_ALT_EXTENDED_CLASS: [\\p{L}&&[\\p{scx=Thai}||\\p{scx=Greek}]]"
notes: "Since 10.45 Perl (?[...]) supports ! complement, & intersection, - subtraction, |/+ union and ^ symmetric difference; ! binds tightest, then &, then the other left-associative binary operators. It ignores space/tab via implicit EXTENDED_MORE; literal characters/ranges belong in nested ordinary classes. ALT_EXTENDED_CLASS additionally enables nested [...] with ||, &&, --, ~~. Juxtaposition binds more tightly than explicit operators; mixing different explicit operators without nesting is a syntax error. In this second syntax, x/xx is not implied. These are code-point sets, not string classes."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2syntax.3"
---
