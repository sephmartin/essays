# Repository architecture audit

**Record type:** historical audit and migration baseline; not a reader entry point

## Current state after the July 16 review

- The root README is now the Essays-level index.
- Trash-End is a child family under trash-end/, explicitly treated as the working center rather than a permanent naming lock.
- The Big Question, Aisthesis, Synthesis, and Computronium each have their own README.
- The Big Question separates current candidates, drafts, sources, and legacy Italian/English versions.
- TREE.md distinguishes the living galaxy from the separate early fragment archive.
- Internal chronology and provenance live under project-records/, avoiding a collision with the fragment archive.
- v17-rc1.1 and v16-rc1.0 are both available for direct comparison.
- Historical v15 remains byte-for-byte unchanged.
- The previous flat essay paths were deliberately migrated only after the user confirmed Essays → Trash-End → works. Git history preserves the old locations.
- The GitHub remote has not been renamed or pushed, and no live-site files were changed by this editorial migration.

The sections below retain the initial audit baseline and therefore describe the repository before the architecture work.

**Audit baseline:** `main` at `46d8f6b`, matching `origin/main` on 2026-07-14
**Scope:** All 23 tracked files, full Git history, supplied handoff corpus, and the live `/articles/the-big-question` route

## Baseline structure

Before this architecture pass, the repository contained only:

```text
essays/
├── essay-en-v3.md ... essay-en-v13.md
└── essay-it-v3.md ... essay-it-v13.md, essay-it-v15-gpt.md
```

There was no root README, essay index, current-version pointer, status metadata, decision log, conceptual navigation, or documented relation to the live site.

## Strengths

- **Real version history:** The repository preserves changes of mind rather than overwriting them.
- **Parallel languages:** Most major versions exist in both Italian and English.
- **Improving epistemic discipline:** v10 softens several universal claims; v15 turns uncertainty and self-critique into part of the argument.
- **References appear from v9 onward:** Readers can begin tracing scientific claims.
- **Direct voice:** The essay keeps its personal movement from late-night inquiry to interdisciplinary bridge-building.
- **Stable historical paths:** Every essay is a simple Markdown file with a durable GitHub URL.

## Fragmentation and stale material

- Filenames alone do not tell readers which text is current, stable, superseded, or experimental.
- There is no v1, v2, v14, or English v15; the gaps are real history but unexplained.
- `essay-en-v5.md` and `essay-en-v6.md` are byte-identical. Italian v5 and v6 are also byte-identical.
- Italian v8 temporarily places the HADD/belief-system block in the biological-memory section rather than the anthropocentrism section.
- Italian v13 contains visible defects such as `Dio con la barra`, `Mas`, `like`, `the costo`, `Sunder`, and `como`.
- v13 overstates several relationships: high Assembly Index as impossible by chance, life as the only relevant constructor, fading of the simulation/experience boundary, and a thermodynamically free CCC reset.
- English v13 has not received the corrective epistemic rewrite present in Italian v15.
- No version has been explicitly designated stable.

These files should not be deleted. Their defects are reasons to classify and contextualize them, not to erase them.

## Navigation gaps

- No path from repository root to any essay.
- No direct comparison of languages or versions.
- No explanation of why Trash-End remains the container.
- No home for Aisthesis, Synthesis, or Computronium.
- No distinction between evidence, interpretation, analogy, speculation, and open question.
- No durable provenance for decisions made in conversation.

## Link and deployment risks

- Moving existing essay files into a new `current/` or `versions/` tree would break GitHub blob URLs and unknown external links.
- The live route `https://trash-end.space/articles/the-big-question` responded successfully during the audit, but the tracked `trash-end.space-blog` checkout does not contain that route. The deployment source or compatibility layer is therefore not documented here.
- The public repository and live site are separate surfaces. Changes to this repository should not be described as live-site changes unless deployment is verified separately.
- The checkout contained a pre-existing untracked `.DS_Store`; it was not touched.

## Recommended architecture

The implemented approach is additive:

- keep all historical essay paths unchanged;
- add a root README and clickable essay index;
- create small branch directories for Aisthesis, Synthesis, Computronium, and The Big Question guidance;
- add archive provenance, project history, and decision log;
- add a light epistemic-status framework, glossary, and recursive concept map;
- prepare social recommendations without applying them.

## Deferred recommendations

1. Review v15 claim by claim with primary scientific sources.
2. Produce an English text aligned with v15's epistemic standard.
3. Designate a stable release only after review.
4. Document the actual deployment source for the live article before changing site URLs.
5. Consider a future compatibility layer (`current/` pointers or redirects) only after external-link inventory.
6. Add `.DS_Store` to a repository-level ignore policy in a separate housekeeping change if desired.
