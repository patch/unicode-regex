---
record_type: "evaluation"
provider: "pcre2"
feature: "script-extensions"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\p{scx=Cyrl}"
  - "\\p{script_extensions:Cyrillic}"
  - "\\p{Cyrl}"
  - "\\p{scx=Hira}"
  - "\\p{scx=Kana}"
  - "(*UTF)(?x)е(\\p{scx=Cyrl})и$"
  - "pcre2_substitute(..., replacement=\"я${1}\", options=PCRE2_SUBSTITUTE_GLOBAL)"
  - "(*sr:...)"
  - "(*asr:...)"
notes: "scx/script extensions tests membership in the associated script set and bare script values select scx. Values records list named script selectors, not combined script-set data. The unexecuted Cyrillic example replaces final е + a captured Cyrillic-associated character + и with я + the capture; compile the pattern before pcre2_substitute. Replacement syntax belongs to this C API and can differ in wrappers. Script-run groups verify a common Script_Extensions intersection with UTS #39 exceptions and digit-set checks; DFA does not support script runs."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2unicode.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2api.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2matching.3"
---
