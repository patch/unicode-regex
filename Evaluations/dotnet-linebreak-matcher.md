---
record_type: "evaluation"
provider: "dotnet"
feature: "linebreak-matcher"
status: "Unsupported"
mechanism: "None"
syntax: []
notes: "The documented escape grammar has no dedicated R token. An unexecuted explicit alternative assembled from documented escapes is (?:\\r\\n|[\\n\\v\\f\\r\\x85\\u2028\\u2029]); it orders CRLF first. Such a user-written pattern is not a dedicated linebreak token and does not alter anchor/dot behavior."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-escapes-in-regular-expressions"
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-language-quick-reference#character-escapes"
---
