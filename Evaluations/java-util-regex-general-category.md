---
record_type: "evaluation"
provider: "java-util-regex"
feature: "general-category"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\p{L}"
  - "\\p{IsL}"
  - "\\p{gc=Lu}"
  - "\\p{general_category=Sc}"
  - "\\P{M}"
notes: "Categories follow Character's Unicode 17.0 data. The inventory preserves 30 two-letter subcategories and eight standard aggregate values, including LC, with descriptive labels for their meanings. Pattern refers to normative/informative Unicode category names but illustrates short values only; labels do not assert accepted long aliases."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#unicode"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/lang/Character.html"
  - "https://www.unicode.org/Public/17.0.0/ucd/PropertyValueAliases.txt"
---
