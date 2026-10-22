# Unicode regex research plan

Updated: `2026-10-22`. Reuse and refine this plan for each new language/provider review. [Data.md](Data.md#unicode-feature-research) defines the records, statuses and UTS #18 baseline; [UTS18.md](UTS18.md) preserves shared requirement reminders; [UTW2026](UTW2026/README.md#unicode-research) records current progress and scope.

## 1. Select and scope

- Select the next shortlisted provider by existing rank, unless a targeted pilot has a concrete advantage. Research the complete provider across all features, rather than splitting work by UTS level or item.
- Resolve language/runtime wrappers through the existing Support records. Reuse research for a shared engine; record host, platform or API restrictions where they affect availability or behavior.
- Separate an upstream release or published standard from wrapper availability and implementation data. A standard's required Unicode version does not establish the version used by every runtime.
- Use the latest stable, most capable release and all documented options. Retain older variants only when a material distinction requires them. Record the release, date, review scope, provider Unicode version and relevant host Unicode version; distinguish build-time from runtime data where documented and leave undocumented facts explicit.
- When parallel agents are requested, assign one complete provider per agent in small ranked batches. Keep provider edits separate, coordinate shared definitions centrally, and review results in rank order.

## 2. Establish documentation evidence

- Work from official documentation, without executing provider examples or inspecting engine implementation code. Documentation-source files, release notes and their revision history may resolve documentation questions. Scripts may extract documentation and validate records.
- Set the provider's `documentation` URL to the official page that best explains regex features. Prefer release-pinned manuals and targeted section links; record their scope and freshness. Check manual headers for development releases and reconcile summary/detail conflicts through detailed definitions and release notes.
- Check Unicode version statements and property inventories independently. Resolve discrepancies through release notes and documentation history where possible. Mark demonstrably stale material as stale; preserve an unresolved discrepancy when the evidence cannot settle it.
- Gate rolling documentation by release applicability; preview features and historical Framework-only version statements do not establish stable-release support. Resolve stale release-page banners against official release announcements and version histories.
- A dated inventory supplies positive evidence, not a complete current repertoire. Distinguish explicit lists, referenced APIs/standards and selectors derived from a documented rule. Do not transfer arbitrary UCD properties or aliases into the provider's accepted syntax.
- Preserve documentation issues noticed during normal research in the relevant provider, evaluation or property notes, with source URLs, observed version/date and any uncertainty. This includes bugs, inconsistencies, outdated information and concrete clarification opportunities. Reuse those records; do not perform a separate issue hunt or maintain a duplicate log.

## 3. Assess every feature

- Read UTS18.md, the current Features records and the corresponding versioned UTS sections. Create one evaluation for every feature, including explicit documentation gaps. Shared explanations of property domains/value types are not separate support scores.
- Count a capability as supported when any documented option supplies it. Put required flags/API options in `syntax`, defaults and restrictions in `notes`; omit version-mode flags when the same feature works in both modes.
- Use `Partial` for a known functional limit. Use `Undocumented` for uncertain scope or missing evidence; absence alone is not `Unsupported`. Keep detailed UTS alignment uncertainty in `uts_notes` instead of lowering documented capability support.
- Record published level claims and their stated UTS revision separately from our assessments. An unversioned claim does not establish conformance to every requirement in the recorded baseline. Read the actual requirement: RL2.2 includes string classes; RL2.4 concerns conditional case conversion, not automatic full caseless matching.
- Keep Regex and Host capabilities distinct: normalization preprocessing versus canonical matching, folding conversion versus host comparison versus regex folding, and sequence lookup versus named-sequence regex syntax. Record useful adjacent host facilities in visible notes without crediting them as a different capability.
- Trace each statement to its exact operation; replacement-string casing does not establish the matching algorithm's folding behavior.
- Check the regex matching unit independently of host scalar/grapheme APIs. Surrogate-pair escapes do not establish full-range hexadecimal code-point notation or scalar-aware matching.
- A Unicode data version does not identify the segmentation algorithm revision. Preserve documented grapheme support separately from unresolved alignment with newer UAX #29 rules; emoji/string-set support alone does not establish arbitrary grapheme matching.

## 4. Capture Unicode syntax and inventories

- Preserve documented long/short property and value names, omitted-name forms, prefixes, separators, braces, negation, binary yes/no forms and loose-matching rules. Record mode-specific complement/case-fold ordering and restrictions on negating string properties. Separate accepted syntax from undocumented spellings; do not infer acceptance from another engine or from Unicode's preferred syntax.
- Record exact shorthand definitions, defaults and Unicode/ASCII controls; code-point versus grapheme behavior; and linebreak-token behavior separately from anchors/dot. Explain host escaping only where it changes the Unicode example.
- Preserve the API layer for required options: ordinary compile flags, compile-context extra options, match options and wrapper flags are not interchangeable bitmasks.
- Populate Properties records with documented properties, value lists, aliases and extensions. Family summaries alone are insufficient. Separate a standard's fixed accepted property-name tables from value aliases imported from a particular Unicode version. Preserve named Script_Extensions values separately from multi-script data combinations; a combination is not automatically an accepted selector.
- Preserve readable category/value meanings. Parenthesized labels describe values; square-bracketed aliases assert accepted spellings. Keep source dates, derivation limits and inventory omissions visible through the existing source/notes fields and Bases columns.
- If a manual delegates inventories to a provider command, record that documentation-only gap without running it. Preserve earlier official lists as dated positive evidence; do not claim current completeness. Compare extracted names and aliases with the source and referenced Unicode data, not only totals; keep unresolved source spellings visible instead of silently correcting accepted syntax.
- Include relevant contextual Unicode examples assembled from documented constructs, with replacement/API syntax where needed. Identify them as unexecuted examples.

## 5. Perform the repeatability audit

Complete this explicitly after each provider; schema validation alone is insufficient.

- Confirm that records answer the technical questions represented in [IUC38](IUC38/README.md): release/Unicode/provider provenance; code points and extended versus legacy graphemes; property syntax variants and negation; category/script meanings and inventories; contextual script replacement; numeric, width, binary, Script_Extensions and block distinctions; shorthand/boundary defaults and options; and Unicode linebreaks.
- Use those questions as a completeness check. Keep UTS #18 and current findings as the organizing structure; do not reproduce the old slides or assume their historical results still apply. Documentation-only answers may remain undocumented.
- Check that support, syntax, host distinctions, source limitations and conformance qualifications remain clear in the Bases views. Distinguish a practical feature comparison from a formal UTS finding. For example, RL1.6 explicitly lists six newline cases, while its broader discussion and our comparison also cover VT/FF.
- Fill gaps in existing records first. Add fields or features only for concrete distinctions that cannot be represented clearly. For a shared change, update Data.md, affected records, Bases and the validator together; new features need evaluations for every reviewed provider.

## 6. Validate and deliver

- Run `ruby scripts/check_data.rb` and `git diff --check`. Check extracted inventory coverage against its documented source and review the actual record contents, not only counts. Keep required qualifications visible in Bases.
- Deliver a provider-sized change with findings, source limitations, the repeatability-audit outcome and validation results. Commit when requested. Use the comparison views to identify common capabilities, gaps and syntax differences; slide generation remains deferred.
- Record each completed provider's audit outcome and unresolved documentation gaps in UTW2026 progress.

## 7. Refine this plan

- After each review, incorporate reusable lessons into the relevant steps of this file in the same change. Update the date when the method changes; use Git history instead of a growing change log.
- Keep schema definitions in Data.md, shared requirement reminders in UTS18.md, provider-specific facts in their records, and research progress in UTW2026. Update the reference when a requirement interpretation or baseline changes. If a refinement affects earlier reviews, update those records or explicitly identify the remaining follow-up.
- Retain only guidance that addresses an observed need. Worked examples: [Python regex](Providers/python-regex.md) for dated inventories; [java.util.regex](Providers/java-util-regex.md) for conformance claims and rule-derived selectors; [.NET](Providers/dotnet.md) for release gating and code-unit/host distinctions; [PCRE2](Providers/pcre2.md) for manual conflicts and inventory gaps; [ECMAScript RegExp](Providers/ecmascript-regexp.md) for strict aliases, string properties and standard/runtime scope.
