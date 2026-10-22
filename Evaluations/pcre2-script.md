---
record_type: "evaluation"
provider: "pcre2"
feature: "script"
status: "Supported"
mechanism: "Engine"
syntax:
  - "\\p{sc=Latin}"
  - "\\p{script:Latn}"
  - "\\P{sc:Cyrl}"
  - "[\\p{sc=Hira}\\p{sc=Kana}\\p{sc=Hani}\\p{sc=Latn}\\p{sc=Zyyy}]"
notes: "Explicit script/sc selects the single basic Script value; both long names and standard four-letter abbreviations are documented. Latin/Latn, Cyrillic/Cyrl and the Japanese-script class illustrate the distinction from blocks. Bare \\p{Latin} now means Script_Extensions, not Script. Unassigned characters have Unknown Script; other script-neutral characters can be Common. The stored 162-name published 2021 inventory supplies dated positive evidence only; current 17.0 completeness is not established because -LS was not run."
sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2syntax.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2unicode.3"
---
