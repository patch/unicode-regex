---
record_type: "evaluation"
provider: "dotnet"
feature: "block"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\p{IsCyrillic}"
  - "\\p{IsGreek}"
  - "\\p{IsGreekandCoptic}"
  - "\\p{IsCombiningDiacriticalMarksforSymbols}"
  - "\\p{IsCombiningMarksforSymbols}"
  - "\\p{IsPrivateUse}"
  - "\\p{IsPrivateUseArea}"
  - "Regex.Replace(input, @\"е(\\p{IsCyrillic})и$\", \"я$1\")"
notes: "The 105 documented block ranges have 108 selectors, including three alias pairs, based on Unicode 4.0 and Perl 5.6. All ranges lie in the BMP; block membership includes every code point in its range. The unexecuted replacement uses a documented block and $1 capture substitution; it is a block-restricted analogue, not Cyrillic Script matching. Cyrillic_Extended_A and blk=/Block= forms are not listed."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#supported-named-blocks"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/substitutions-in-regular-expressions#substituting-a-numbered-group"
undocumented_syntax:
  - "\\p{Block=Cyrillic}"
  - "\\p{blk=Cyrillic}"
  - "\\p{IsCyrillicExtended-A}"
---
