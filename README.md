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

| Commit | Description | Date | Files | Changes | Net |
|--------|-------------|:----:|:-----:|:-------:|:---:|
| [`3d247e7`](https://github.com/gosirys/hackPanion/commit/3d247e73ec94a8023c172d4c8687588d402771e6) | hooks: install the generated changelog hook (dev/21 L65, A-55) | 9 days ago | 2 | +113/−0 | 113 |
| [`27412f0`](https://github.com/gosirys/hackPanion/commit/27412f03a4722fe45d946096f4142e08b68b2b80) | Auto-commit submodule changes in hackPanion | 10 days ago | 1 | +1/−1 | 0 |
| [`2e7ed05`](https://github.com/gosirys/hackPanion/commit/2e7ed05bb93bac74f55a68c79a6ebf61b2fa97e2) | chore: update submodule pointers | 10 days ago | 4 | +4/−4 | 0 |
| [`b4acbe6`](https://github.com/gosirys/hackPanion/commit/b4acbe663a8b19e6682d501bde80e92fedd61490) | Auto-commit submodule changes in hackPanion | 11 days ago | 1 | +1/−1 | 0 |
| [`0df2f99`](https://github.com/gosirys/hackPanion/commit/0df2f9940d6a1b7440224722aca105ba68ceded8) | chore: update submodule pointers | 11 days ago | 4 | +4/−4 | 0 |
| [`ce5b6ba`](https://github.com/gosirys/hackPanion/commit/ce5b6bae2151f0cb0aca01f0aef4cc485f78354d) | Auto-commit submodule changes in hackPanion | 12 days ago | 1 | +1/−1 | 0 |
| [`b7d74b4`](https://github.com/gosirys/hackPanion/commit/b7d74b49a6fd0be8dc882d9baec519c047ef836b) | chore: update submodule pointers | 12 days ago | 5 | +5/−5 | 0 |
| [`ac9684b`](https://github.com/gosirys/hackPanion/commit/ac9684b3fb6cd7830ecb727f897139a2c3f42034) | Auto-commit submodule changes in hackPanion | 13 days ago | 1 | +1/−1 | 0 |
| [`82f495e`](https://github.com/gosirys/hackPanion/commit/82f495e805f1424eb14d8848a4cca9fbaeb7d4d1) | chore: update submodule pointers | 13 days ago | 5 | +5/−5 | 0 |
| [`dab8d90`](https://github.com/gosirys/hackPanion/commit/dab8d903e991e1393b45e0bf54a5256d2a3354df) | Auto-commit submodule changes in hackPanion | 14 days ago | 1 | +1/−1 | 0 |
| [`ad3af91`](https://github.com/gosirys/hackPanion/commit/ad3af917994b219d4d437bdebbc7b4ab2bf52407) | chore: update submodule pointers | 14 days ago | 5 | +5/−5 | 0 |
| [`433e0de`](https://github.com/gosirys/hackPanion/commit/433e0def7fb91fee6eaa25c7654a0168720c244f) | Auto-commit submodule changes in hackPanion | 15 days ago | 1 | +1/−1 | 0 |
| [`831d8a5`](https://github.com/gosirys/hackPanion/commit/831d8a515e82178b911d9fd7c77a4300d081f773) | chore: update submodule pointers | 15 days ago | 4 | +4/−4 | 0 |
| [`7e88811`](https://github.com/gosirys/hackPanion/commit/7e8881190f7c14ec24e7305736cf48938f45a117) | Auto-commit submodule changes in hackPanion | 16 days ago | 2 | +2/−2 | 0 |
| [`644b45d`](https://github.com/gosirys/hackPanion/commit/644b45de5cded6b1b61b309278cd188b28ca3981) | chore: update submodule pointers | 16 days ago | 4 | +4/−4 | 0 |

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
| [projectdiscovery/nuclei-templates](https://github.com/projectdiscovery/nuclei-templates) | `nuclei-templates` | 2026-10-27 |
| [danielmiessler/SecLists](https://github.com/danielmiessler/SecLists) | `SecLists` | 2026-10-27 |
| [arkadiyt/bounty-targets-data](https://github.com/arkadiyt/bounty-targets-data) | `bounty-targets-data` | 2026-10-27 |
| [0x727/FingerprintHub](https://github.com/0x727/FingerprintHub) | `fingerprint/FingerprintHub` | 2026-10-27 |
| [projectdiscovery/cdncheck](https://github.com/projectdiscovery/cdncheck) | `fingerprint/cdncheck` | 2026-10-25 |
| [trickest/wordlists](https://github.com/trickest/wordlists) | `wordlists` | 2026-10-16 |
| [trickest/resolvers](https://github.com/trickest/resolvers) | `resolvers` | 2026-10-16 |
| [chainreactors/fingers](https://github.com/chainreactors/fingers) | `fingerprint/fingers` | 2026-09-27 |
| [swisskyrepo/PayloadsAllTheThings](https://github.com/swisskyrepo/PayloadsAllTheThings) | `PayloadsAllTheThings` | 2026-08-27 |
| [random-robbie/bruteforce-lists](https://github.com/random-robbie/bruteforce-lists) | `bruteforce-lists` | 2026-04-30 |
| [ayoubfathi/leaky-paths](https://github.com/ayoubfathi/leaky-paths) | `leaky-paths` | 2026-04-03 |
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

