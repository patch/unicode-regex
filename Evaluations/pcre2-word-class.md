---
record_type: "evaluation"
provider: "pcre2"
feature: "word-class"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(*UCP)\\w"
  - "(*UCP)\\W"
  - "(*UCP)(?aW)\\w"
  - "\\p{Xwd}"
notes: "Since 10.43 UCP w and detailed Xwd are L|N|Mn|Pc; W complements w. It includes letter/other numbers and nonspacing marks but not all marks, Other_Alphabetic or Join_Control. The syntax-summary Xwd definition Xan plus underscore is stale; the detailed pattern manual and 10.43 change statement establish Mn/Pc. Default w uses low-valued tables (ASCII letters/digits/underscore in C locale); UTF alone does not change it. EXTRA_ASCII_BSW/(?aW) restores that default and affects b/B."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2syntax.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2unicode.3"
---
