# hackPanion
> Scaffolded from [one-multi-repos](https://github.com/gosirys/one-multi-repos):  
> automated submodule setup + GitHub Actions for keep-up-to-date modules.

This is my personal companion repo I take with me on new machines where I need to perform security testing.
As long as I pull this, I know it will have all other repos updated.


I called it "companion" as with it it brings hackers' most underrated friends: wordlists, payloads, dictionaries and so on.

Being public this is limited to public repositories only. If you like me need to have all your secret and private weapones as well, you can just apply this concept like I have.

Say you have custom dictionaries, payloads, exploits all sitting on private repositories, just repackage it all together in a "final companion" so it will have:

- all your private "companions" 
- the "public" companion (for me, HackPanion)



---

<!-- CHANGELOG:START -->
<details>
<summary>Changelog</summary>

| Commit | Description | Files | Changes | Net |
|--------|-------------|:-----:|:-------:|:---:|
| [`797747f`](https://github.com/gosirys/hackPanion/commit/797747f756d9ff6badfb39d9d25107ebefa3a99d) | ci: run checkout on node24 in hackPanion | 1 | +4/−1 | 3 |
| [`f6a7462`](https://github.com/gosirys/hackPanion/commit/f6a74620b1a6f2b291803969cc3df5e5c1484dbc) | chore: update submodule pointers | 1 | +1/−1 | 0 |
| [`11e4505`](https://github.com/gosirys/hackPanion/commit/11e450566e11042acc83d351909a377fe621003c) | Auto-commit submodule changes in hackPanion | 6 | +6/−6 | 0 |
| [`93c5039`](https://github.com/gosirys/hackPanion/commit/93c5039ab33785ab25976bb58f87b44e8b2ee2ce) | chore: update submodule pointers | 7 | +7/−7 | 0 |
| [`962a59a`](https://github.com/gosirys/hackPanion/commit/962a59a80c1f0474fde216e8c5a1a8b3c6c2aabf) | chore: update submodule pointers | 7 | +7/−7 | 0 |
| [`8a30b9e`](https://github.com/gosirys/hackPanion/commit/8a30b9e634f24d94f24e512ea4230e3f4f540ec7) | chore: update submodule pointers | 6 | +6/−6 | 0 |
| [`2e9dc54`](https://github.com/gosirys/hackPanion/commit/2e9dc545b760d0eec4032be3c75280e4c5245b9b) | chore: update submodule pointers | 7 | +7/−7 | 0 |
| [`db2c53e`](https://github.com/gosirys/hackPanion/commit/db2c53e698404b6d3176dfb516ca1ce9a0111782) | chore: update submodule pointers | 7 | +7/−7 | 0 |
| [`0eba49b`](https://github.com/gosirys/hackPanion/commit/0eba49b6f78cc955e95a5a4b1f2b77a1a90f79ea) | chore: update submodule pointers | 6 | +6/−6 | 0 |
| [`0447576`](https://github.com/gosirys/hackPanion/commit/04475762ba3655b0c89a0ec133aefe92f9eaf55d) | chore: update submodule pointers | 7 | +7/−7 | 0 |
| [`c05e3aa`](https://github.com/gosirys/hackPanion/commit/c05e3aa43622856725831ba50f134c2230048b39) | chore: update submodule pointers | 6 | +6/−6 | 0 |
| [`d8dd1d0`](https://github.com/gosirys/hackPanion/commit/d8dd1d070d98fca4e41931b5978a4596ea241e28) | chore: update submodule pointers | 6 | +6/−6 | 0 |
| [`c0eaa6d`](https://github.com/gosirys/hackPanion/commit/c0eaa6dbe865c916977fcbcfa6fb0cb6bdc1ce1e) | chore: update submodule pointers | 5 | +5/−5 | 0 |
| [`b18637d`](https://github.com/gosirys/hackPanion/commit/b18637d0de8c1b7315939b967310e59820ea670c) | Auto-commit submodule changes in hackPanion | 6 | +6/−6 | 0 |
| [`1853d3e`](https://github.com/gosirys/hackPanion/commit/1853d3e63b3a6b2f5da22610b4863fd612aab551) | Auto-commit submodule changes in hackPanion | 6 | +6/−6 | 0 |

_Auto-generated — last 15 commits._

</details>
<!-- CHANGELOG:END -->

## Usage
### Clone

```bash
git clone --recursive --depth 1 git@github.com:gosirys/hackPanion.git
cd hackPanion
git config core.hooksPath .config/hooks  # enable automatic sparse checkout
.config/scripts/apply-sparse-checkout.sh  # apply sparse checkout to selective-sync repos
```

### Pull

```bash
git pull --recurse-submodules --depth=1
```

Sparse checkout is automatically restored after pull/merge via git hooks.

### Selective sync

Some submodules only sync specific files/directories instead of the full repo (see `.config/sparse-checkout-config`). This is handled automatically by git hooks after clone/pull. To manually re-apply:

```bash
.config/scripts/apply-sparse-checkout.sh
```

To add a new selective-sync repo, edit `.config/submodules.txt` and run `.config/scripts/init-submodules.sh`.

---

## Submodule Status

> Auto-updated daily by GitHub Actions. Sorted by last updated (most recent first).

<!-- SUBMODULE-STATUS:START -->
| Repository | Path | Last Updated |
|:-----------|:-----|:-------------|
| [trickest/wordlists](https://github.com/trickest/wordlists) | `wordlists` | 2026-04-25 |
| [projectdiscovery/nuclei-templates](https://github.com/projectdiscovery/nuclei-templates) | `nuclei-templates` | 2026-04-25 |
| [danielmiessler/SecLists](https://github.com/danielmiessler/SecLists) | `SecLists` | 2026-04-25 |
| [arkadiyt/bounty-targets-data](https://github.com/arkadiyt/bounty-targets-data) | `bounty-targets-data` | 2026-04-25 |
| [0x727/FingerprintHub](https://github.com/0x727/FingerprintHub) | `fingerprint/FingerprintHub` | 2026-04-25 |
| [trickest/resolvers](https://github.com/trickest/resolvers) | `resolvers` | 2026-04-24 |
| [swisskyrepo/PayloadsAllTheThings](https://github.com/swisskyrepo/PayloadsAllTheThings) | `PayloadsAllTheThings` | 2026-04-22 |
| [projectdiscovery/cdncheck](https://github.com/projectdiscovery/cdncheck) | `fingerprint/cdncheck` | 2026-04-21 |
| [chainreactors/fingers](https://github.com/chainreactors/fingers) | `fingerprint/fingers` | 2026-04-16 |
| [ayoubfathi/leaky-paths](https://github.com/ayoubfathi/leaky-paths) | `leaky-paths` | 2026-04-03 |
| [random-robbie/bruteforce-lists](https://github.com/random-robbie/bruteforce-lists) | `bruteforce-lists` | 2026-02-18 |
| [many-passwords/many-passwords](https://github.com/many-passwords/many-passwords) | `many-passwords` | 2024-09-06 |
| [TheKingOfDuck/fuzzDicts](https://github.com/TheKingOfDuck/fuzzDicts) | `fuzzDicts` | 2023-11-13 |
| [EdgeSecurityTeam/EHole](https://github.com/EdgeSecurityTeam/EHole) | `fingerprint/EHole` | 2023-06-14 |
<!-- SUBMODULE-STATUS:END -->

---

## Repositories included

### Wordlists & Payloads

All repos below use selective sync to only keep data files (no images, docs, scripts, etc). See `.config/sparse-checkout-config` for exact patterns.

| Repository                                              | Synced | Description                                                                                               |
|:--------------------------------------------------------|:-------|:----------------------------------------------------------------------------------------------------------|
| [swisskyrepo/PayloadsAllTheThings](https://github.com/swisskyrepo/PayloadsAllTheThings) | `txt, xml, xsl, php, html, py, json, yml, zip` | Payloads and bypasses for web application security testing.                |
| [danielmiessler/SecLists](https://github.com/danielmiessler/SecLists) | `txt, csv` | Comprehensive collection of wordlists for security assessments. |
| [random-robbie/bruteforce-lists](https://github.com/random-robbie/bruteforce-lists) | full | Wordlists and data files tailored for brute-forcing various targets.                                       |
| [TheKingOfDuck/fuzzDicts](https://github.com/TheKingOfDuck/fuzzDicts) | full | Ready-to-use dictionaries designed specifically for web application fuzzing.                               |
| [ayoubfathi/leaky-paths](https://github.com/ayoubfathi/leaky-paths) | full | Known sensitive or misconfigured paths and endpoints for rapid content discovery.                          |
| [many-passwords/many-passwords](https://github.com/many-passwords/many-passwords) | `csv` | Default and common credential lists for IoT devices, admin panels, and embedded systems.                   |
| [trickest/resolvers](https://github.com/trickest/resolvers) | `txt` | An exhaustive, validated list of reliable public DNS resolvers.                                           |
| [trickest/wordlists](https://github.com/trickest/wordlists) | `txt` | A curated collection of real-world wordlists for reconnaissance and brute-forcing.                         |

### Fingerprinting & Detection (selective sync)

| Repository                                              | Synced | Description                                                                           |
|:--------------------------------------------------------|:-------|:--------------------------------------------------------------------------------------|
| [chainreactors/fingers](https://github.com/chainreactors/fingers)    | `resources/*.json.gz, *.yaml` | Pre-compiled fingerprint data (ehole, fingerprinthub, goby, wappalyzer, nmap, etc.)   |
| [0x727/FingerprintHub](https://github.com/0x727/FingerprintHub) | `web_fingerprint_v3.json` | Web technology fingerprint definitions.                                    |
| [EdgeSecurityTeam/EHole](https://github.com/EdgeSecurityTeam/EHole)     | `finger.json` | Fingerprint rules for identifying web frameworks and CMS.                             |
| [projectdiscovery/cdncheck](https://github.com/projectdiscovery/cdncheck) | `sources_data.json` | CDN, WAF, and cloud provider IP ranges.                                         |

### Vulnerability Templates (selective sync)

| Repository                                              | Synced | Description                                                                           |
|:--------------------------------------------------------|:-------|:--------------------------------------------------------------------------------------|
| [projectdiscovery/nuclei-templates](https://github.com/projectdiscovery/nuclei-templates) | `yaml, json` | Community-curated vulnerability templates for the Nuclei scanner. |

### Bug Bounty (selective sync)

| Repository                                              | Synced | Description                                                                           |
|:--------------------------------------------------------|:-------|:--------------------------------------------------------------------------------------|
| [arkadiyt/bounty-targets-data](https://github.com/arkadiyt/bounty-targets-data) | `data/*.json` | Per-platform bug bounty scope data with in/out-of-scope targets, asset types, wildcards, and reward info. Auto-updated every 30 min. |

