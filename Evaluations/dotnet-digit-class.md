---
record_type: "evaluation"
provider: "dotnet"
feature: "digit-class"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\d"
  - "\\D"
  - "\\p{Nd}"
  - "[0-9]"
  - "RegexOptions.ECMAScript"
notes: "Default d is Nd (Decimal_Digit_Number); D is its complement. ECMAScript changes them to [0-9] and [^0-9]. Nl/No are numbers but not d. Numeric_Value/nv selectors, including nv=10, are excluded by the documented GC/block grammar. CharUnicodeInfo.GetNumericValue is a host lookup and does not add regex numeric properties."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#decimal-digit-character-d"
  - "https://learn.microsoft.com/en-us/dotnet/api/system.globalization.charunicodeinfo?view=net-10.0"
uts_notes: "The shorthand is category-based within the documented UTF-16 matching model; this is not a finding of full supplementary Nd or Annex C conformance."
---
