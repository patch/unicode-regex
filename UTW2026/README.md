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

## Future expansion

Reconsider omitted providers when they would add a meaningful Unicode comparison or support a broader survey:

- [Hyperscan](https://github.com/intel/hyperscan) and [Vectorscan](https://github.com/VectorCamp/vectorscan), particularly if multi-pattern or streaming matching enters scope.
- Other add-on candidates: [CTRE](https://github.com/hanickadot/compile-time-regular-expressions), [SRELL](https://www.akenotsuki.com/misc/srell/en/), [fancy-regex](https://github.com/fancy-regex/fancy-regex), [regexp2](https://github.com/dlclark/regexp2), [RE/flex](https://www.genivia.com/doc/reflex/html/) and [CL-PPCRE](https://edicl.github.io/cl-ppcre/).
- [Raku](https://docs.raku.org/language/regexes), outside the current 50-language sample.

Independent-adoption and two-language availability requirements were considered but not adopted. Existing data inclusion and ranking rules remain unchanged.

## Resources

- [Session page](https://www.unicode.org/events/utw/2026/talks/state-of-the-regex-2026/)
- [Event](https://www.unicode.org/events/utw/2026/)
