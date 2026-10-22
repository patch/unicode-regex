---
record_type: "evaluation"
provider: "dotnet"
feature: "full-properties"
status: "Partial"
mechanism: "Engine"
syntax:
  - "\\p{L}"
  - "\\p{IsBasicLatin}"
notes: "The documented repertoire has General Category and 105 BMP named blocks. It has no regex Numeric_Value/nv, East_Asian_Width/ea, Script/sc, Script_Extensions/scx, Age or binary-property family. In particular White_Space/WSpace, Hex_Digit/Hex, Variation_Selector/VS and Deprecated/Dep (positive, P-negated and =Yes/=No forms) are outside the listed grammar. CharUnicodeInfo numeric lookup and IsVariationSelectors/IsHalfwidthandFullwidthForms blocks do not change those distinctions."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#unicode-category-or-unicode-block-p"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#supported-named-blocks"
  - "https://learn.microsoft.com/en-us/dotnet/api/system.globalization.charunicodeinfo?view=net-10.0"
uts_notes: "This known small repertoire does not establish RL2.7. No current UTS level claim was found."
---
