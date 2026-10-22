---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "digit-class"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The standard defines \\d as exactly the ten ASCII characters 0..9 and \\D as its complement under every mode. Neither u nor v broadens it to Unicode decimal digits; use \\p{Decimal_Number} or \\p{gc=Nd} with u/v for that set. These alternatives are property selectors, not Unicode decimal-digit shorthand."
sources:
  - "https://262.ecma-international.org/17.0/#sec-compiletocharset"
---
