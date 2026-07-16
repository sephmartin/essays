# Change report

**Branch:** `codex/trash-end-architecture-2026-07-14`
**Base:** `46d8f6b` (`main` and `origin/main` at audit time)
**Approach:** Additive and reversible

## Files added

### Entry and audit

- `README.md`
- `ARCHITECTURE.md`
- `AUDIT.md`
- `CHANGE_REPORT.md`

### Essay navigation and branches

- `essays/index.md`
- `essays/the-big-question/index.md`
- `essays/the-big-question/epistemic-notes.md`
- `essays/aisthesis/index.md`
- `essays/aisthesis/music.md`
- `essays/aisthesis/attraction.md`
- `essays/synthesis/index.md`
- `essays/computronium/index.md`

### Archive and concepts

- `archive/project-history.md`
- `archive/decision-log.md`
- `archive/conversation-sources.md`
- `concepts/epistemic-status.md`
- `concepts/glossary.md`
- `concepts/concept-map.md`

### Prepared recommendations

- `social/profile-recommendations.md`

## Files modified

None of the 23 pre-existing essay files were modified.

## Files moved or deleted

None.

## Links preserved

- Every existing `essays/essay-*.md` path is unchanged.
- No public site route, domain, social profile, or external account was changed.
- New navigation uses relative Markdown links around the existing files.

## Source integration

- The two supplied Aisthesis seed files were copied verbatim into the repository and framed as seeds, not stable essays.
- The JSON and Markdown conversation exports were not copied into the public repository. Their filenames, roles, checksums, and high-authority message IDs are recorded in `archive/conversation-sources.md`.
- Assistant-generated language is marked as proposal or co-developed where relevant.

## Assumptions

- Italian v15 is the current working draft because it is the latest commit and the strongest epistemic revision; it is not labeled stable.
- English v13 is the latest English branch but not equivalent in rigor to Italian v15.
- Reading times use 200 words per minute and are rounded up.
- The proposed Computronium subtitle remains provisional.
- The live article and public repository are related but do not share a documented deployment source in the inspected checkouts.

## Unresolved issues

- Scientific review and source hardening for The Big Question.
- English rewrite aligned with v15.
- Stable-release designation.
- Exact live-site deployment ownership and route compatibility.
- Missing original image referenced by the conversation export.
- Formal trademark, domain, and handle review if a commercial launch is later authorized.

## Suggested next actions

1. Review the architecture and decision ledger for conceptual fidelity.
2. Run a scientific claim audit on Italian v15.
3. Create an English v15-equivalent draft.
4. Decide whether the first stable release should be bilingual.
5. Only then plan live-site integration and redirects.

## Editorial update: v16-rc1.0

On 2026-07-16, a complete Italian release candidate was added without modifying the historical v15 source:

- `essays/the-big-question/current/the-big-question-it-v16-rc1.0.md` — assembled review candidate;
- `essays/the-big-question/current/README.md` — candidate status, reading link, and rebuild instructions;
- `scripts/build_the_big_question_v16.rb` — deterministic assembly from the approved introduction source and v15 body.

The candidate adds the human-first introduction, a clickable internal index, and explicit stable chapter anchors. The body remains the v15 body except for removing the comma from the chapter title `Un ponte e le sue crepe`. The deferred cultural chronology and Computronium cameo are not included.

Navigation in the root README, Essays README, The Big Question README, roadmap, and decision log now distinguishes the current release candidate from its preserved historical base. No site files, remote repository settings, tags, or external accounts were changed.

## Editorial update: v17-rc1.1

The second comparison candidate preserves v16-rc1.0 and changes four high-risk passages:

- the 2013 planarian result is described as a savings/relearning effect rather than an intact maze memory;
- learned behavior, morphogenetic patterning, and persistent RNA interference are separated;
- Transformer language models are not presented as rough copies of biological brains;
- Landauer's bound is no longer used as a physical bridge to a CCC reset;
- the final why is explicitly a question reopened by phenomena, not their cause.

Four primary sources were added for the targeted review: Shomrat and Levin 2013, Vaswani et al. 2017, Landauer 1961, and Penrose 2014.

## Structural update: Essays → Trash-End → works

After explicit confirmation on 2026-07-16, the local branch was migrated from the temporary flat essays layout to:

- README.md — Essays-level index;
- trash-end/README.md — current family and genealogy;
- trash-end/the-big-question/ — current candidates, drafts, sources, and legacy;
- trash-end/aisthesis/, synthesis/, computronium/ — individual works.

All historical Italian and English files now live under trash-end/the-big-question/legacy/. No version was deleted or rewritten. The earlier “files moved or deleted: none” statement describes the first additive architecture pass and is superseded by this later, user-approved migration.

The remote repository remains named trash-end-archive for now. No push, repository rename, tag, site deploy, domain change, or social-profile change was performed.
