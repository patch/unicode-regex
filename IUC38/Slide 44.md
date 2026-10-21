# Unicodified escape sequences

| Sequence | Equivalent |
| --- | --- |
| `\s` | `\p{White_Space}` |
| `\d` | `\p{gc=Decimal_Number}` |
| `\w` | `[ \p{alpha}`<br>`  \p{gc=Mark}`<br>`  \p{digit}`<br>`  \p{gc=Connector_Punctuation}`<br>`  \p{Join_Control} ]` |
| `\b` | `\w`-based boundaries |
