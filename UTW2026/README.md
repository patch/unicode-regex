---
event: Unicode Technology Workshop
date: 2026-10-23
presenter: Nova Patch
time: "10:10"
duration_minutes: 40
room: Creativity Station (Room 109)
---
# State of the Regex 2026

## Description

Unicode Technical Standard #18 defines Unicode regular expressions, but implementations differ across languages, libraries, and engines. Support has improved considerably over the last decade, particularly through ECMAScript standards and contemporary JavaScript engines, while gaps remain.

The session surveys widely used engines from a practical engineering perspective, comparing present capabilities and platform differences and identifying implementation work with the most value. It follows Nova Patch's 2014 IUC38 talk, *Unicode Regular Expression Engines*, to assess progress over more than a decade and the limitations that remain.

## Review scope

Decision: 2026-10-22.

The current collection of 30 providers is more than sufficient as the candidate pool for UTW2026. Proceed to detailed Unicode review of a useful, practically relevant subset, with no fixed target count or requirement to cover every provider.

- Prioritize real-world exposure and meaningful differences in current Unicode regex behavior.
- Use prior IUC38 research as background for returning providers; review newly added providers only in their current forms.
- Use the language-exposure ranking as one input; it does not measure actual engine usage.
- Defer further provider research unless the review reveals a material gap.

## Unicode research

Documentation-only pilot: Python re `3.15.1` and Python regex `2026.9.29`, checked `2026-10-22`. UTS #18 revision 25 organizes 33 regex capabilities and 3 host workflows, with 72 assessments and 97 documented Python regex property selectors. Capability support and UTS alignment are recorded separately. Count support through any documented option; include required flags in the syntax and omit version-mode flags where the feature works in both modes.

Definitions and method: [Data](../Data.md#unicode-feature-research). Results: Unicode reviews, Unicode evaluations, Unicode feature comparison, Unicode host workflows and Unicode properties in [Unicode Regex.base](../Unicode%20Regex.base). Record Unicode versions, syntax, property/value aliases, source freshness, qualifications and official sources. Documentation gaps remain explicit; no provider code was tested.

Java expansion: java.util.regex `27.0.1`, Unicode `17.0.0`, checked `2026-10-22`; 36 assessments and 60 property records. Java claims Level 1 plus RL2.1/RL2.2 without naming a UTS revision. Explicit lists and rule-derived Java classification selectors remain distinguishable in the inventory.

Parallel expansion checked `2026-10-22`, reviewed and integrated in rank order:

- .NET `10.0.13`: 36 assessments, two property records containing 37 category values and 105 block ranges / 108 spellings. Repeatability audit complete: UTF-16 versus host scalar/grapheme facilities, category/block syntax and meanings, a qualified block-based contextual replacement, shorthand/boundary defaults and stable LF line rules are explicit. Modern classification Unicode version, automatic equivalence/full folding and named-sequence host lookup remain undocumented; .NET 11 features are excluded.
- PCRE2 `10.49`, Unicode `17.0.0`: 36 assessments, 25 property records. Repeatability audit complete: UTF/UCP controls, code points versus extended/legacy graphemes, syntax/negation, contextual script replacement, numeric/width/binary/script/block distinctions, shorthands and all Unicode linebreaks are explicit. Current complete binary/script inventories remain documentation gaps; 162 archived script names are dated positive evidence. Unresolved source spelling, whitespace-definition and segmentation-revision questions remain visible.
- ECMAScript RegExp `2026` (ECMA-262 edition 17): 36 assessments, 63 property records; Unicode `18.0.0` is the latest required standard target at review, with runtime data/adoption unsurveyed. Repeatability audit complete: u/v code-point and string-set distinctions, exact property/value aliases, contextual script replacement, shorthand/boundary restrictions, line terminators and host workflows are explicit. String/emoji properties do not establish arbitrary grapheme matching; host casefold preprocessing and named-sequence lookup remain undocumented.

Total: six providers, 36 features (33 regex capabilities and three host workflows), 216 assessments and 247 property records. Each repeatability audit checked actual records against IUC38's technical questions; completed audits are documentation assessments, not formal conformance findings. Existing schema and views were sufficient; qualifications remain visible through their evidence fields. Reusable lessons are incorporated in [Research Plan](../Research%20Plan.md).

Independent batch review: corrected the ECMAScript RL1.6 qualification, PCRE2 compile-option layers and matching-versus-replacement casing evidence. PCRE2's unresolved whitespace-formula discrepancy covers both NEL and U+180E. ECMAScript property/value aliases and .NET category/block inventories were checked against official tables; capability statuses and counts were retained. Shared requirement reminders are preserved in [UTS18.md](../UTS18.md).

Next shortlisted provider by existing rank: Perl.

## Future expansion

Reconsider omitted providers when they would add a meaningful Unicode comparison or support a broader survey:

- [Hyperscan](https://github.com/intel/hyperscan) and [Vectorscan](https://github.com/VectorCamp/vectorscan), particularly if multi-pattern or streaming matching enters scope.
- Other add-on candidates: [CTRE](https://github.com/hanickadot/compile-time-regular-expressions), [SRELL](https://www.akenotsuki.com/misc/srell/en/), [fancy-regex](https://github.com/fancy-regex/fancy-regex), [regexp2](https://github.com/dlclark/regexp2), [RE/flex](https://www.genivia.com/doc/reflex/html/) and [CL-PPCRE](https://edicl.github.io/cl-ppcre/).
- [Raku](https://docs.raku.org/language/regexes), outside the current 50-language sample.

Independent-adoption and two-language availability requirements were considered but not adopted. Existing data inclusion and ranking rules remain unchanged.

## Resources

- [Session page](https://www.unicode.org/events/utw/2026/talks/state-of-the-regex-2026/)
- [Event](https://www.unicode.org/events/utw/2026/)
