---
record_type: provider
name: RE2
provider_type: Engine
documentation: https://learn.microsoft.com/en-us/sql/relational-databases/regular-expressions/overview?view=sql-server-ver17
rank: 27
score: 0.3
ranking_language_syntax: []
ranking_included_api:
  - "Transact-SQL"
ranking_add_on_library: []
additional_libraries:
  - "python-re2"
  - "cpp-re2"
  - "csharp-re2"
  - "javascript-re2"
  - "r-re2"
  - "go-re2"
  - "ocaml-re2"
  - "ruby-re2"
  - "typescript-re2"
library_notes: "Only bindings to the C++ implementation qualify; the Go entry covers go-re2's cgo backend. The original C++ library is also available as an add-on."
library_sources:
  - "https://github.com/google/re2"
---
