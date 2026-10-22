---
record_type: "evaluation"
provider: "pcre2"
feature: "properties"
status: "Undocumented"
mechanism: "Undocumented"
syntax: []
notes: "General Category, Script, Script_Extensions, Any, Bidi_Class, Bidi_Control and provider extensions are explicitly documented. Current manuals delegate the binary-property list and aliases to pcre2test -LP; it was not executed. They do not state that every required binary property is available. Therefore the full revision-25 minimum repertoire cannot be established from the reviewed documentation. ASCII is expressible as [[:ascii:]] and Assigned as \\P{Cn}, without asserting those are accepted bare property names."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2unicode.3"
  - "https://www.unicode.org/reports/tr18/tr18-25.html#Categories"
---
