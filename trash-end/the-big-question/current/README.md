# The Big Question: current candidate

This directory contains the complete Italian release candidates currently under comparison.

## Read

- [The Big Question v17-rc1.1](the-big-question-it-v17-rc1.1.md) — epistemically tightened comparison candidate.
- [The Big Question v16-rc1.0](the-big-question-it-v16-rc1.0.md) — previous candidate, preserved unchanged.

Both candidates contain the approved human-first introduction and chapter index. v17 changes only the passages documented in the project README. Historical v15 remains untouched. The cultural chronology and possible Computronium cameo are deliberately not folded into either build yet.

## Rebuild

From the repository root:

```sh
ruby scripts/build_the_big_question_v16.rb
ruby scripts/build_the_big_question_v17.rb
```

The generated file has stable chapter anchors so that the complete essay or an individual chapter can be shared from the same source.
