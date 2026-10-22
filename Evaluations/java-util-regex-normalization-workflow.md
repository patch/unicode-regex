---
record_type: "evaluation"
provider: "java-util-regex"
feature: "normalization-workflow"
status: "Supported"
mechanism: "Host API"
syntax:
  - "Normalizer.normalize(text, Normalizer.Form.NFC)"
  - "Normalizer.normalize(text, Normalizer.Form.NFD)"
  - "Normalizer.normalize(text, Normalizer.Form.NFKC)"
  - "Normalizer.normalize(text, Normalizer.Form.NFKD)"
notes: "The host supplies all four Unicode normalization forms. Normalize subject text and design literal/pattern construction for the chosen form; normalization of arbitrary regex source is not assumed safe. This is separate from CANON_EQ."
sources:
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/text/Normalizer.html"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/text/Normalizer.Form.html"
  - "https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/Pattern.html#CANON_EQ"
---
