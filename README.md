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
| [trickest/wordlists](https://github.com/trickest/wordlists) | `wordlists` | 2026-03-25 |
| [trickest/resolvers](https://github.com/trickest/resolvers) | `resolvers` | 2026-03-25 |
| [projectdiscovery/nuclei-templates](https://github.com/projectdiscovery/nuclei-templates) | `nuclei-templates` | 2026-03-25 |
| [projectdiscovery/cdncheck](https://github.com/projectdiscovery/cdncheck) | `fingerprint/cdncheck` | 2026-03-25 |
| [danielmiessler/SecLists](https://github.com/danielmiessler/SecLists) | `SecLists` | 2026-03-25 |
| [0x727/FingerprintHub](https://github.com/0x727/FingerprintHub) | `fingerprint/FingerprintHub` | 2026-03-25 |
| [swisskyrepo/PayloadsAllTheThings](https://github.com/swisskyrepo/PayloadsAllTheThings) | `PayloadsAllTheThings` | 2026-03-16 |
| [ayoubfathi/leaky-paths](https://github.com/ayoubfathi/leaky-paths) | `leaky-paths` | 2026-02-22 |
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

