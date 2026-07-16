# The Big Question: current candidate

This directory contains the complete Italian release candidate currently under review.

## Read

- [The Big Question v16-rc1.0](the-big-question-it-v16-rc1.0.md)

The candidate combines the approved human-first introduction and chapter index with the full v15 body. Historical v15 remains untouched. The cultural chronology, the possible Computronium cameo, and the final evidence audit are deliberately not folded into this build yet.

## Rebuild

From the repository root:

```sh
ruby scripts/build_the_big_question_v16.rb
```

The generated file has stable chapter anchors so that the complete essay or an individual chapter can be shared from the same source.
