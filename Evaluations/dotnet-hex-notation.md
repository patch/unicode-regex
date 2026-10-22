---
record_type: "evaluation"
provider: "dotnet"
feature: "hex-notation"
status: "Partial"
mechanism: "Engine"
syntax:
  - "\\x20"
  - "\\u00E9"
  - "\\uD83D\\uDE00"
notes: "Regex escapes use exactly two hex digits after x or four after u; u denotes one UTF-16 code unit. A supplementary character can be written as two surrogate escapes, but there is no direct full-range code-point hex escape: the manual explicitly excludes Perl-style x{...}. C# verbatim strings preserve regex backslashes; ordinary C# strings require escaping them or host Unicode escapes. Examples are unexecuted."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/standard/base-types/character-escapes-in-regular-expressions"
  - "https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/tokens/verbatim"
uts_notes: "The documented escape range does not directly satisfy RL1.1's full code-point notation. Escape spelling also preserves intended decomposed sequences in pattern text."
---
