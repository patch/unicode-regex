---
record_type: "evaluation"
provider: "pcre2"
feature: "property-loose-matching"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\p{Bidi_Class=AL}"
  - "\\p{ bidi class : al }"
  - "\\p{ Bi-di class = Al }"
notes: "Property descriptions ignore ASCII whitespace (space, HT, LF, VT, FF, CR), hyphens and underscores and compare names/values without case sensitivity. The p/P escape letter remains case-sensitive. Loose matching does not add unsupported long General Category aliases, Is prefixes or unlisted binary abbreviations."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2syntax.3"
---
