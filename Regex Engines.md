Regex providers ranked by the October 2026 TIOBE ratings of their associated programming languages.

| Rank | Regex provider | Provider type | Score | Language syntax | Included API | Add-on library |
| ---: | --- | --- | ---: | --- | --- | --- |
| 1 | [Python re](https://docs.python.org/3.15/library/re.html) | Engine | 19.23 | — | Python | — |
| 2 | [Python regex](https://pypi.org/project/regex/) | Engine | 19.23 | — | — | Python |
| 3 | [POSIX regex](https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/regex.h.html) | Standard family | 11.58 | Awk | C | — |
| 4 | [java.util.regex](https://docs.oracle.com/en/java/javase/27/docs/api/java.base/java/util/regex/package-summary.html) | Engine | 9.51 | — | Java, Kotlin (JVM), Scala (JVM), CFML (Lucee) | — |
| 5 | [C++ std::regex](https://www.open-std.org/jtc1/sc22/wg21/docs/papers/2023/n4950.pdf) | Standard family | 8.87 | — | C++ | — |
| 6 | [.NET](https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expressions) | Engine | 6.31 | PowerShell | C#, Visual Basic | — |
| 7 | [PCRE2](https://www.php.net/manual/en/pcre.installation.php) | Engine | 5.80 | ABAP | R, PHP, Julia | Fortran |
| 8 | [ECMAScript RegExp](https://262.ecma-international.org/17.0/#sec-regexp-regular-expression-objects) | Standard family | 4.26 | JavaScript, TypeScript | Dart, Kotlin (JS) | — |
| 9 | [PCRE](https://docwiki.embarcadero.com/Libraries/Florence/en/System.RegularExpressionsCore.TPerlRegEx) | Engine | 3.37 | ABAP (SAP HANA SQL) | R, Delphi/Object Pascal (Delphi) | — |
| 10 | [TRE](https://stat.ethz.ch/R-manual/R-patched/library/base/html/grep.html) | Engine | 2.06 | — | R | — |
| 11 | [SQL regex predicates](https://www.postgresql.org/docs/current/functions-matching.html) | Standard family | 1.97 | SQL | — | — |
| 12 | [Perl](https://perldoc.perl.org/perlre) | Engine | 1.64 | Perl | SAS (SAS 9.4 PRX) | — |
| 13 | [ICU](https://developer.apple.com/documentation/foundation/nsregularexpression) | Engine | 1.64 | — | Swift, Objective-C | — |
| 14 | [Rust regex](https://docs.rs/regex/latest/regex/) | Engine | 1.44 | — | — | Rust |
| 15 | [Go regexp](https://pkg.go.dev/regexp) | Engine | 1.39 | — | Go | — |
| 16 | [Oniguruma](https://www.php.net/manual/en/mbstring.installation.php) | Engine | 1.26 | — | PHP | — |
| 17 | [VBScript RegExp](https://learn.microsoft.com/en-us/previous-versions/iis/6.0-sdk/ms526061(v=vs.90)) | Engine | 1.22 | — | Classic Visual Basic, VBScript | — |
| 18 | [Swift Regex](https://developer.apple.com/documentation/swift/regex) | Engine | 1.03 | Swift | — | — |
| 19 | [MATLAB regexp](https://www.mathworks.com/help/matlab/ref/regexp.html) | API family | 0.83 | — | MATLAB | — |
| 19 | [TRegExpr](https://gitlab.com/freepascal.org/fpc/source/-/blob/release_3_2_2/packages/regexpr/src/regexpr.pas) | Engine | 0.83 | — | Delphi/Object Pascal (Free Pascal) | — |
| 21 | [OCaml Str](https://ocaml.org/manual/5.5/libstr.html) | Engine | 0.61 | — | OCaml | — |
| 22 | [Onigmo](https://docs.ruby-lang.org/en/4.0/LEGAL.html) | Engine | 0.53 | Ruby (CRuby) | — | — |
| 23 | [Oracle REGEXP_* API](https://docs.oracle.com/en/database/oracle/oracle-database/26/sqlrf/Oracle-Regular-Expression-Support.html) | API family | 0.51 | — | PL/SQL | — |
| 24 | [Boost.Regex](https://help.sap.com/doc/abapdocu_816_index_htm/8.16/en-US/abenregular_expressions.html) | Engine | 0.48 | ABAP (obsolete POSIX facility) | — | — |
| 25 | [Kotlin Regex (Native/Wasm)](https://github.com/JetBrains/kotlin/blob/v2.4.21/libraries/stdlib/native-wasm/src/kotlin/text/Regex.kt) | Engine | 0.48 | — | Kotlin | — |
| 26 | [D std.regex](https://dlang.org/phobos/std_regex.html) | Engine | 0.46 | — | D | — |
| 27 | [RE2](https://learn.microsoft.com/en-us/sql/relational-databases/regular-expressions/overview?view=sql-server-ver17) | Engine | 0.30 | — | Transact-SQL | — |
| 28 | [X++ match](https://learn.microsoft.com/en-us/dynamics365/fin-ops-core/dev-itpro/dev-ref/xpp-string-run-time-functions#match) | API family | 0.27 | — | X++ | — |
| 29 | [XPath/XSLT regex](https://www.w3.org/TR/xslt-30/#analyze-string) | Standard family | 0.26 | XSLT | — | — |
| 30 | [Apache ORO](https://docs.lucee.org/categories/regex.html) | Engine | 0.25 | — | CFML (Lucee) | — |

Score is the sum of TIOBE rating percentage points, using only support documented for the latest stable language versions or standards listed in [Programming Languages](Programming%20Languages.md). Each language contributes its full rating once to every associated provider, including conditional or optional support; ratings are never split. Missing or unspecified providers are excluded. Scores measure language exposure and are not normalized usage shares.

Wrappers are grouped under their documented underlying engine. Engine identifies an implementation or library; API family identifies a named API whose engine is unidentified or variable; Standard family identifies a standardized facility with multiple implementations. Named libraries with their own implementations remain separate even when they share syntax with another provider.

Order: total score descending, then rating subtotals for Language syntax, Included API, and Add-on library, in that order. Each language/provider pair uses its strongest category. Providers equal on all four values share a competition rank (1, 2, 2, 4); alphabetical order only arranges tied rows. Languages within each cell follow TIOBE rank order. Implementation qualifications and sources are in [Programming Languages](Programming%20Languages.md).

Sources: [Programming Languages](Programming%20Languages.md), provider documentation linked above; [TIOBE Index for October 2026](https://www.tiobe.com/tiobe-index/), TIOBE Software BV (www.tiobe.com). Provider mappings checked 20 October 2026.
