# UTS #18 research reference

Baseline: [revision 25](https://www.unicode.org/reports/tr18/tr18-25.html), `2025-01-16`. Reviewed: `2026-10-22`.

Shared reminders for [Research Plan](Research%20Plan.md). Read alongside the relevant Features records; consult the linked clauses for exact wording and edge cases. This reference stores research context, not provider findings or conformance verdicts.

## Conformance

[C0–C4](https://www.unicode.org/reports/tr18/tr18-25.html#Conformance): claims identify UTS/Unicode versions. Level 1: RL1.1–RL1.7 and RL1.2a. Level 2 adds RL2.1–RL2.7. Level 3 retracted. Documented options/add-ons/system workflows may qualify; defaults and example syntax are not required.

## Requirement reminders

| Clause | Check |
| --- | --- |
| [RL1.1](https://www.unicode.org/reports/tr18/tr18-25.html#Hex_notation) | Full-range hexadecimal code points. Escapes protect pattern text against normalization; they do not establish canonical matching. |
| [RL1.2](https://www.unicode.org/reports/tr18/tr18-25.html#Categories) | [Minimum repertoire](Features/properties.md), UCD aliases and loose matching. Age/Block are outside this minimum. |
| [RL1.2a](https://www.unicode.org/reports/tr18/tr18-25.html#Compatibility_Properties) | Annex C definitions: Standard Recommendation or POSIX-compatible. |
| [RL1.3](https://www.unicode.org/reports/tr18/tr18-25.html#Subtraction_and_Intersection) | Union, intersection, difference. |
| [RL1.4](https://www.unicode.org/reports/tr18/tr18-25.html#Simple_Word_Boundaries) | Alphabetic + Nd + Join_Control; preserve bases with nonspacing marks; ignore marks for boundaries. |
| [RL1.5](https://www.unicode.org/reports/tr18/tr18-25.html#Simple_Loose_Matches) | Conditional simple folding; document property closure. |
| [RL1.6](https://www.unicode.org/reports/tr18/tr18-25.html#Line_Boundaries) | CRLF, LF, CR, NEL, LS, PS; no CRLF interior boundary. VT/FF appear in broader discussion. |
| [RL1.7](https://www.unicode.org/reports/tr18/tr18-25.html#Supplementary_Characters) | Code-point matching; UTF-16 surrogate pairs act together. |
| [§2.1](https://www.unicode.org/reports/tr18/tr18-25.html#Canonical_Equivalents) | C2 references RL2.1; no separate boxed requirement present. Describes normalization preprocessing with compatible patterns. |
| [RL2.2](https://www.unicode.org/reports/tr18/tr18-25.html#Default_Grapheme_Clusters) | Arbitrary extended graphemes, grapheme boundaries, string classes. |
| [RL2.3](https://www.unicode.org/reports/tr18/tr18-25.html#Default_Word_Boundaries) | Default UAX #29 word boundaries. |
| [RL2.4](https://www.unicode.org/reports/tr18/tr18-25.html#Default_Loose_Matches) | Conditional full-folding conversion; automatic full caseless matching clause retracted. |
| [RL2.5](https://www.unicode.org/reports/tr18/tr18-25.html#Name_Properties) | Name/Name_Alias, algorithmic names, loose name matching. |
| [RL2.6](https://www.unicode.org/reports/tr18/tr18-25.html#Wildcard_Properties) | Property-value wildcards. |
| [RL2.7](https://www.unicode.org/reports/tr18/tr18-25.html#Full_Properties) | [Full repertoire](Features/full-properties.md), version-applicable. |
| [§2.8](https://www.unicode.org/reports/tr18/tr18-25.html#optional_properties) | Optional; outside Level 2 requirements. |

## Project mapping

The Features records hold the minimum, compatibility and full property lists. Their `sections`, `requirement`, `role` and `scope` fields map our independently assessed capabilities to the standard; a section can require several evaluations. Use the Unicode features view in [Unicode Regex.base](Unicode%20Regex.base) to navigate this mapping.

Keep these distinctions explicit during research:

- Assess hexadecimal notation, matching units and host offsets independently.
- Compare Script, Script_Extensions and Block through their own records and inventories.
- Review shorthand definitions, simple boundaries and default word boundaries separately.
- Separate normalization workflows, automatic canonical matching, folding conversion and caseless matching.
- Review grapheme matching, boundaries and string classes individually; emoji support alone is insufficient evidence for the others.
- Compare linebreak tokens, anchors and dot independently. Preserve our broader VT/FF comparison without enlarging the RL1.6 list.
- Check string-set negation against [Annex D](https://www.unicode.org/reports/tr18/tr18-25.html#Resolving_Character_Ranges_with_Strings): complement is code-point based; string operands may be rejected.

Update this shared reference when a review exposes a missing interpretation or the baseline changes. Keep provider evidence in evaluations, schema definitions in Data.md and workflow refinements in Research Plan.md.
