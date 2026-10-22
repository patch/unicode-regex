---
record_type: provider
name: Onigmo
provider_type: Engine
iuc38: true
documentation: https://docs.ruby-lang.org/en/4.0/LEGAL.html
rank: 22
score: 0.53
ranking_language_syntax:
  - "Ruby (CRuby)"
ranking_included_api: []
ranking_add_on_library: []
library_notes: "Standalone upstream dormant: latest release 6.2.0 (2019-01-30), latest upstream commit 2024-06-15. Ruby and Fluent maintain downstream copies (2026 changes verified), but long-term stewardship of a standalone reusable library is unclear. Excluded from the additional-library survey; existing Ruby support remains. Recent wrapper activity does not establish maintenance of its engine: onigmo-swift 6.2.0 pins the 2019 engine; vscode-onigmo 2.0.1 pins TextMate's 2013 Onigmo 5.13.5; go-onigmo v0.1.1 defaults to upstream 6.2.0. The Ruby onigmo gem exposes parsing/compilation for debugging and education, with no compatibility guarantee or matching API. No additional binding verified to qualify."
library_sources:
  - "https://github.com/k-takata/Onigmo"
  - "https://github.com/k-takata/Onigmo/releases/tag/Onigmo-6.2.0"
  - "https://github.com/ruby/ruby/commit/f81c21213293e584529f9b5ce7a5602103c11457"
  - "https://github.com/fluent/onigmo/commit/9c3b6dec42891a22e98f27799fffee08611b4c27"
  - "https://github.com/swiftty/onigmo-swift/tree/6.2.0"
  - "https://github.com/RedCMD/vscode-Onigmo/tree/520adb429818da84feb9aa10bd329a51bc1f1e81/deps"
  - "https://github.com/textmate/Onigmo/commit/03411d106584594b606b1d30757ec560954e6c49"
  - "https://github.com/braze-inc/go-onigmo/blob/v0.1.1/Makefile"
  - "https://github.com/kddnewton/onigmo/blob/main/README.md"
---
