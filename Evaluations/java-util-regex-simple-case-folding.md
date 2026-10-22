---
record_type: "evaluation"
provider: "java-util-regex"
feature: "simple-case-folding"
status: "Supported"
mechanism: "Engine"
syntax:
  - "(?iu)é"
  - "(?iU)é"
  - "Pattern.CASE_INSENSITIVE | Pattern.UNICODE_CASE"
notes: "i alone is ASCII-oriented. Adding u enables Unicode-aware caseless matching; U also implies u but still needs i. The flag documentation does not identify the exact CaseFolding.txt mapping subset or enumerate character-class closure behavior."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#CASE_INSENSITIVE"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#UNICODE_CASE"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#UNICODE_CHARACTER_CLASS"
uts_notes: "Unicode-aware caseless matching is documented. Exact RL1.5 folding and property-closure alignment remains unverified by this documentation-only assessment."
---
