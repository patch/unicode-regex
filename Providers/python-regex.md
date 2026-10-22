---
record_type: "provider"
name: "Python regex"
provider_type: "Engine"
utw2026: true
documentation: "https://pypi.org/project/regex/"
unicode_review_version: "2026.9.29"
unicode_version: "18.0.0"
unicode_host_version: "17.0.0"
release_date: "2026-09-29"
unicode_review_date: "2026-10-22"
unicode_scope: "CPython 3.15.1; Unicode str patterns; support across all documented options in the reviewed release."
unicode_claim: "No UTS #18 level claim found; the README claims UAX #29 grapheme matching and default Unicode word boundaries."
property_summary: "General_Category, Script, Script_Extensions, Block, binary, numeric and other enumerated properties; provider extensions."
property_inventory_notes: "The 94-property inventory is unchanged since 2019-06-02, in a Unicode 12.1 update commit; it is not a complete current Unicode 18.0.0 inventory. ASCII, Horiz_Space and Vert_Space are separate README additions. Missing properties or values remain undocumented. Script_Extensions data sets are separate from named selector values."
unicode_notes: "Documentation-only review. Release notes and the README establish Unicode 18.0.0; generated docs/Features.html still describes the earlier 17.0.0 version. Feature-specific options appear in syntax; the unqualified mode default is delegated to regex.DEFAULT_VERSION without its value being stated. Named characters and host preprocessing use CPython Unicode 17.0.0. Upstream documents a non-ASCII PyPy limitation."
unicode_sources:
  - "https://pypi.org/project/regex/2026.9.29/"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/README.rst"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/docs/UnicodeProperties.rst"
  - "https://docs.python.org/3.15/library/unicodedata.html"
  - "https://github.com/mrabarnett/mrab-regex/commit/0e8cb0596ba6572c66e5d153a1d7c901b381e15e"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/changelog.txt#L1-L5"
  - "https://github.com/mrabarnett/mrab-regex/blob/2026.9.29/docs/Features.html"
  - "https://github.com/mrabarnett/mrab-regex/commit/d1b92998d54a192dae40be641581605cb4d35d90"
  - "https://github.com/mrabarnett/mrab-regex/blob/d1b92998d54a192dae40be641581605cb4d35d90/docs/UnicodeProperties.rst"
rank: 2
score: 19.23
ranking_language_syntax: []
ranking_included_api: []
ranking_add_on_library:
  - "Python"
property_inventory_date: "2019-06-02"
---
