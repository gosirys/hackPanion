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
| [`b98b91e`](https://github.com/gosirys/hackPanion/commit/b98b91e6aa69474cf54af308e50888bba687d5dd) | feat: unified commit hooks — README changelog | 1 | +24/−0 | 24 |
| [`d3d9021`](https://github.com/gosirys/hackPanion/commit/d3d9021782725cada1f612531e0e7de066e91549) | fix: replace --force-with-lease with plain push, bump checkout to v4 | 1 | +2/−2 | 0 |
| [`20f64ed`](https://github.com/gosirys/hackPanion/commit/20f64ed995a8c3d683ffa3bf3cb457a447a6f6f7) | Auto-commit submodule changes in hackPanion | 6 | +6/−6 | 0 |
| [`661d680`](https://github.com/gosirys/hackPanion/commit/661d680507b70f14a119cce3fcd05885a4711524) | Auto-commit submodule changes in hackPanion | 4 | +4/−4 | 0 |
| [`45bc94f`](https://github.com/gosirys/hackPanion/commit/45bc94f0fc85a73fe6176a95736056603987c82e) | Auto-commit submodule changes in hackPanion | 5 | +5/−5 | 0 |
| [`9c7d7c6`](https://github.com/gosirys/hackPanion/commit/9c7d7c67dc809b93d6a36e184a8d72a682cfb527) | Auto-commit submodule changes in hackPanion | 6 | +6/−6 | 0 |
| [`8f53624`](https://github.com/gosirys/hackPanion/commit/8f536247da91d924f12503dc261397ba0f4fbf4d) | Auto-commit submodule changes in hackPanion | 5 | +5/−5 | 0 |
| [`5f0bb4f`](https://github.com/gosirys/hackPanion/commit/5f0bb4fcf7013be50d75495188fd3724ba627cc1) | chore: update submodule pointers | 6 | +6/−6 | 0 |
| [`87be21f`](https://github.com/gosirys/hackPanion/commit/87be21f203ca578a65647dcdcf065735650f5bba) | Auto-commit submodule changes in hackPanion | 4 | +4/−4 | 0 |
| [`1b89f0e`](https://github.com/gosirys/hackPanion/commit/1b89f0eb46c04a67d5a5bd0d81a16c23391d3b25) | docs: update README for bounty-targets-data submodule swap | 0 | +0/−0 | 0 |
| [`4a24bed`](https://github.com/gosirys/hackPanion/commit/4a24bed3588d026575ed1d7a5a18d6a0633722a9) | feat: replace public-bugbounty-programs with arkadiyt/bounty-targets-data | 3 | +5/−4 | 1 |
| [`5353d65`](https://github.com/gosirys/hackPanion/commit/5353d65e012a1a204a7f1ee17f245adf5def5756) | fix: add public-bugbounty-programs to README submodule status table | 0 | +0/−0 | 0 |
| [`f937a85`](https://github.com/gosirys/hackPanion/commit/f937a850fb6765b711eeac6672aa74f37762eef8) | feat: add projectdiscovery/public-bugbounty-programs as sparse submodule | 3 | +5/−0 | 5 |
| [`51f0de7`](https://github.com/gosirys/hackPanion/commit/51f0de72f678f7a08af80ba08f3e81ea1dbec1fe) | Auto-commit submodule changes in hackPanion | 5 | +5/−5 | 0 |
| [`b2df32f`](https://github.com/gosirys/hackPanion/commit/b2df32f09e30af9f9e6e141609e5a177dd85592b) | Auto-commit submodule changes in hackPanion | 5 | +5/−5 | 0 |

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
| [trickest/wordlists](https://github.com/trickest/wordlists) | `wordlists` | 2026-04-04 |
| [trickest/resolvers](https://github.com/trickest/resolvers) | `resolvers` | 2026-04-04 |
| [projectdiscovery/nuclei-templates](https://github.com/projectdiscovery/nuclei-templates) | `nuclei-templates` | 2026-04-04 |
| [danielmiessler/SecLists](https://github.com/danielmiessler/SecLists) | `SecLists` | 2026-04-04 |
| [0x727/FingerprintHub](https://github.com/0x727/FingerprintHub) | `fingerprint/FingerprintHub` | 2026-04-04 |
| [ayoubfathi/leaky-paths](https://github.com/ayoubfathi/leaky-paths) | `leaky-paths` | 2026-04-03 |
| [arkadiyt/bounty-targets-data](https://github.com/arkadiyt/bounty-targets-data) | `bounty-targets-data` | 2026-04-01 |
| [projectdiscovery/cdncheck](https://github.com/projectdiscovery/cdncheck) | `fingerprint/cdncheck` | 2026-03-29 |
| [swisskyrepo/PayloadsAllTheThings](https://github.com/swisskyrepo/PayloadsAllTheThings) | `PayloadsAllTheThings` | 2026-03-16 |
| [random-robbie/bruteforce-lists](https://github.com/random-robbie/bruteforce-lists) | `bruteforce-lists` | 2026-02-18 |
| [chainreactors/fingers](https://github.com/chainreactors/fingers) | `fingerprint/fingers` | 2026-02-03 |
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

