# The Big Question source manifest

This directory contains distilled, public-safe source records. Raw conversation exports remain outside Git because they contain platform metadata, conversational material, and attachment references that are not required to understand the published work.

## June 15, 2026 development package

| Artifact | Role | SHA-256 | Repository treatment |
|---|---|---|---|
| `Analisi-saggio-speculativo.json` | Primary message chronology, roles, IDs, timestamps, and attachment metadata | `8cfdd6f7b2afc2237852b1c76fe3b0482c5cfa77e2198356512732cee39ce8c8` | Not copied; distilled in the development record |
| `Analisi-saggio-speculativo.md` | Readable transcript of the same 26-message conversation | `bc112f1d3debb7f99c6ecef5842ea296459982b8c18fd01dd57e8bc0e4e97460` | Not copied; distilled in the development record |
| `essay-it-v14.md` | Claude-informed defensive rewrite supplied as an attachment during the conversation | `cbf68c5352a509427eda725d964263659f476acc0250b1bad1e62f50c9e40642` | Recorded as a development artifact; not a release |
| `essay-it-v15-gpt.md` | ChatGPT rewrite made from v14 under the author's explicit editing instructions | `441ffff308ebb23d6c3e5fe14fa81e59c860b2157475154bcc634f8862b01e2b` | Byte-identical to the tracked repository v15 |

The conversation spans 2026-06-15 16:23:46 through 17:30:46 and contains 26 top-level messages. Its attachment metadata identifies `essay-it-v14.md`; the local file matches that name and reported size.

## July 16, 2026 targeted primary-source pass

These sources support the changes made in v17-rc1.1:

| Passage | Primary source | Editorial use |
|---|---|---|
| Planarian behavior after head regeneration | [Shomrat & Levin, Journal of Experimental Biology (2013)](https://doi.org/10.1242/jeb.087809) | Describes environmental familiarization and a savings effect; does not establish an intact maze memory or its storage mechanism |
| Transformer language models | [Vaswani et al., Attention Is All You Need (2017)](https://arxiv.org/abs/1706.03762) | Grounds the architecture description without treating LLMs as biological-brain replicas |
| Thermodynamic cost of erasure | [Landauer, IBM Journal of Research and Development (1961)](https://doi.org/10.1147/rd.53.0183) | Supports the erasure bound, not a cosmic reset mechanism |
| Conformal Cyclic Cosmology | [Penrose, Foundations of Physics (2014)](https://doi.org/10.1007/s10701-013-9763-z) | Grounds CCC as a distinct cosmological proposal that does not derive its crossover from Landauer |

## Related source records

- [June 15 v14-to-v15 development chronology](2026-06-15-v15-development.md)
- [Repository-wide conversation manifest](../../archive/conversation-sources.md)
- [Editorial roadmap](../editorial-roadmap.md)

## Attribution rule

User statements establish the author's intent. Assistant passages remain proposals unless the user explicitly adopts their substance. An assistant-drafted paragraph is not treated as final authored prose merely because its direction was approved.
