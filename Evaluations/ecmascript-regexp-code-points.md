---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "code-points"
status: "Supported"
mechanism: "Engine"
syntax:
  - "/./u"
  - "/./v"
  - "/\\u{1D11E}/u"
notes: "Unicode mode consumes UTF-16 surrogate pairs as one supplementary code point; default BMP mode treats the two code units separately. Dot excludes the four ECMAScript line terminators unless s is supplied. Unpaired surrogates remain matchable. RegExp match indices and lastIndex refer to UTF-16 code units, not grapheme or code-point offsets."
sources:
  - "https://262.ecma-international.org/17.0/#sec-pattern-semantics"
  - "https://262.ecma-international.org/17.0/#sec-regexpbuiltinexec"
  - "https://262.ecma-international.org/17.0/#sec-compileatom"
---
