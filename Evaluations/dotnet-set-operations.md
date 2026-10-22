---
record_type: "evaluation"
provider: "dotnet"
feature: "set-operations"
status: "Supported"
mechanism: "Engine"
syntax:
  - "[\\p{L}-[\\p{Lu}]]"
  - "[a-z-[^aeiou]]"
  - "[a-z-[d-w-[m-o]]]"
notes: "Subtraction uses [base-[excluded]], with positive or negative groups and recursively nested exclusions. The exclusion must be last in its class; nested expressions evaluate from inside outward. Subtracting a complement expresses intersection (second unexecuted example); juxtaposition supplies union. No && intersection operator or arbitrary nested-class union is documented."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-classes-in-regular-expressions#character-class-subtraction-base_group---excluded_group"
  - "https://learn.microsoft.com/en-us/dotnet/api/system.text.regularexpressions.regexparseerror?view=net-10.0"
---
