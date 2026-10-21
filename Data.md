# Structured data

50 languages, 30 providers and 48 support mappings. Open [Unicode Regex.base](Unicode%20Regex.base) for Languages, Providers, Provider comparison and Support views.

- `Languages/<id>.md`: `record_type: language`, `name`, quoted `version`, `tiobe_rank`, `tiobe_rating`; optional `version_source`, `support_status`, `providers` list, `notes` and `sources` list. Named releases without a single version source use `sources`.
- `Providers/<id>.md`: `record_type: provider`, `name`, `provider_type`, `documentation`, `rank`, `score`, and lists `ranking_language_syntax`, `ranking_included_api`, `ranking_add_on_library`.
- `Support/<language>-<provider>.md`: `record_type: support`, `language`, `provider`, `category`, `sources`; optional `api`, `implementation`, `targets` list and `notes`. Append a target to the filename if a pair needs separate records.

Language and provider filenames supply stable IDs; change `name` for display-name edits. Renaming an ID requires updating every reference. Support references use those IDs; Bases supplies clickable links. Read relationships from properties, not by splitting filenames. Keep properties flat, one per line; use lists for sources and targets. Store qualifications as plain text in `notes`, displayed in the corresponding view, with URLs in source properties. Record bodies are empty. Missing targets or implementation means no restriction was recorded.

Each view selects its record folder. Bases locates the dataset through the unique filename `Unicode Regex.base`, so the views and links keep their scope when embedded elsewhere or opened in a sidebar. Keep that filename unique within the vault.

Use **New** in the corresponding view, complete the editable properties and right-click **ID** → **Rename…** to set the filename using the conventions above. **Language ID** and **Provider ID** in Support are editable references; the Language and Provider columns display their names. New records remain incomplete until all required data and affected display/ranking fields are updated.

Language `providers` lists are derived display indexes of provider IDs, ordered by provider rank. Support records remain authoritative; keep these lists in sync when mappings change. The Languages view displays the provider names as links alongside each language.

Categories: `Language syntax`, `Included API`, `Add-on library`. Included API covers bundled language, runtime and platform APIs. Add-on libraries qualify only when named in official language/project documentation. Language `support_status` is present only for `None documented` (no qualifying provider identified) or `Unspecified` (support varies across implementations). The Languages view shows `Documented` when its providers list is populated; incomplete entries without a status or providers display a blank.

Provider types: `Engine` identifies an implementation or library; `API family` identifies an API whose engine is unidentified or variable; `Standard family` identifies a standardized facility with multiple implementations. Wrappers are grouped under their documented underlying engine. Libraries with their own implementations remain separate even when they share syntax.

Ranking month: `2026-10`. Language versions checked: `2026-10-19`. Support mappings checked: `2026-10-20`.

Versions are the latest stable releases or published standards at the check date. Family-wide entries retain their scope and state when no single version exists. Provider mappings use documentation for those versions; historical-only mappings are excluded.

Ranks are integers; TIOBE ratings and provider scores are numeric percentage points. Each language contributes its full rating once to each associated provider, including conditional or optional support. Ratings are not split; missing or unspecified providers are excluded. Scores measure language exposure, not normalized usage shares.

Provider order uses total score descending, then rating subtotals for Language syntax, Included API and Add-on library, in that order. Each language/provider pair uses its strongest category. Providers equal on all four values share a competition rank (1, 2, 2, 4); alphabetical order arranges tied rows. Languages within each category list follow TIOBE rank order.

Provider ranks, scores and category lists are stored snapshots. Bases does not recalculate them automatically; keep them consistent when mappings or ratings change. Provider comparison displays these fields, while Support displays the individual relationships.

Run `ruby scripts/check_data.rb` after editing records or views. It checks required properties, types, IDs, references, duplicate relationships, display lists, category membership and order, scores and competition ranks. The check is read-only; incomplete records fail validation.

Ranking source: [TIOBE Index for October 2026](https://www.tiobe.com/tiobe-index/), TIOBE Software BV (www.tiobe.com). Version and support sources are linked in the records.
