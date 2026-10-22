---
record_type: "evaluation"
provider: "ecmascript-regexp"
feature: "general-category"
status: "Supported"
mechanism: "Engine"
syntax:
  - "/\\p{General_Category=Letter}/u"
  - "/\\p{gc=L}/u"
  - "/\\p{L}/u"
  - "/\\P{Sc}/u"
  - "/\\p{Math_Symbol}/u"
notes: "All 38 Unicode 18 General_Category values and exact aliases are inventoried: 30 subcategories plus eight aggregates (C, L, LC, M, N, P, S, Z). L/Letter aggregates letters; Sc/Currency_Symbol and Sm/Math_Symbol are separate subcategories. Long and abbreviated values work with gc/General_Category or without the property name."
sources:
  - "https://262.ecma-international.org/17.0/#table-nonbinary-unicode-properties"
  - "https://262.ecma-international.org/17.0/#sec-runtime-semantics-unicodematchpropertyvalue-p-v"
  - "https://www.unicode.org/Public/18.0.0/ucd/PropertyValueAliases.txt"
---
