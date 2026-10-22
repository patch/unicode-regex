---
record_type: provider
name: PCRE2
provider_type: Engine
utw2026: true
documentation: https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3
rank: 7
score: 5.8
ranking_language_syntax:
  - "ABAP"
ranking_included_api:
  - "R"
  - "PHP"
  - "Julia"
ranking_add_on_library:
  - "Fortran"
additional_libraries:
  - "c-pcre2"
  - "cpp-pcre2"
  - "java-pcre2"
  - "csharp-pcre2"
  - "javascript-pcre2"
  - "rust-pcre2"
  - "ocaml-pcre2"
  - "lua-pcre2"
  - "typescript-pcre2"
  - "haskell-pcre2"
library_notes: "Python pcre2 is excluded because PyPI labels it Beta. Go candidates with development-only or unstable versions are excluded. Fortran remains in the language-docs column."
library_sources:
  - "https://pypi.org/project/pcre2/0.7.1/"
  - "https://pkg.go.dev/github.com/GRbit/go-pcre/v2"
  - "https://pkg.go.dev/github.com/sg4i/gopcre2"
unicode_review_version: "10.49"
unicode_version: "17.0.0"
release_date: "2026-09-28"
unicode_review_date: "2026-10-22"
unicode_scope: "Upstream 10.49 C library, Unicode build, main pcre2_match API; UTF-8/16/32 and all documented compile/pattern options. Default non-UTF and UCP-off behavior is retained. DFA restrictions and wrapper differences are noted; linked/bundled versions are not asserted to be 10.49."
unicode_claim: "No UTS #18 level-conformance claim found in the reviewed release-pinned manuals. References to UTS #18 extended classes and UAX #29 graphemes describe capabilities, not a complete revision-25 conformance claim."
property_summary: "General Category (38 selectors plus L&), Script and Script_Extensions, Bidi_Class (23 values), Any, explicitly named Bidi_Control, five PCRE2 extensions, and 14 POSIX classes. Latest binary/script inventories are not statically published in the reviewed current manuals."
property_inventory_notes: "Current 10.49 manuals give General Category, Bidi_Class, extension and POSIX lists but refer binary/script lists to pcre2test -LP/-LS; those commands were not executed. Script records preserve 162 names from the 10.39-tag manual (header 2021-08-30/10.38), with Unicode14 four-letter abbreviations under the current documented alias rule. The source misspells Nyiakeng_Puachue_Hmong as Nyakeng_Puachue_Hmong (accepted form unresolved) and its summary omits Unknown. This is dated positive evidence, not a complete Unicode17 inventory. Binary aliases, including the IUC38 White_Space/Hex_Digit/Variation_Selector/Deprecated examples, remain unverified."
unicode_notes: "10.49 is the latest stable release; 10.48 NEWS establishes Unicode17. Online pcre2.org manuals are 10.50-DEV, so release-tag manuals are authoritative here. Detailed Xwd=L|N|Mn|Pc supersedes stale syntax-summary Xan+underscore. A separate unresolved prose conflict equates UCP POSIX space with s: its Xps=Z+HT/LF/VT/FF/CR formula omits NEL (U+0085) and U+180E, while the published s=Z|h|v includes both. Extended-grapheme documentation does not enumerate current Indic-conjunct GB9c; current UAX #29 alignment is not verified. Wrappers: PHP u enables UTF8 and r restricts casing; R needs perl=TRUE and UCP is separate; Julia regex defaults to UTF/UCP with a disabling both. ABAP kernel PCRE2 is distinct from HANA/ABAP SQL PCRE1. Fortran binding and all wrappers may expose older releases/options and different replacement APIs. No runtime examples or engine implementation inspected."
unicode_sources:
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/NEWS"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/ChangeLog"
  - "https://github.com/PCRE2Project/pcre2/releases/tag/pcre2-10.49"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2pattern.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2syntax.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2unicode.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2api.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2compat.3"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.49/doc/pcre2matching.3"
  - "https://www.pcre2.org/doc/pcre2pattern/"
  - "https://github.com/PCRE2Project/pcre2/blob/pcre2-10.39/doc/pcre2pattern.3"
  - "https://www.unicode.org/Public/14.0.0/ucd/PropertyValueAliases.txt"
  - "https://www.php.net/manual/en/reference.pcre.pattern.modifiers.php"
  - "https://stat.ethz.ch/R-manual/R-patched/library/base/html/regex.html"
  - "https://docs.julialang.org/en/v1/base/strings/#Base.@r_str"
  - "https://github.com/SAP-samples/abap-cheat-sheets/blob/main/28_Regular_Expressions.md"
  - "https://fortran-lang.org/packages/strings/"
---
