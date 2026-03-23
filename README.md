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
git config core.hooksPath hooks        # enable automatic sparse checkout
./scripts/apply-sparse-checkout.sh     # apply sparse checkout to selective-sync repos
```

### Pull

```bash
git pull --recurse-submodules --depth=1
```

Sparse checkout is automatically restored after pull/merge via git hooks.

### Selective sync

Some submodules only sync specific files/directories instead of the full repo (see `.sparse-checkout-config`). This is handled automatically by git hooks after clone/pull. To manually re-apply:

```bash
./scripts/apply-sparse-checkout.sh
```

To add a new selective-sync repo, edit `submodules.txt` and run `scripts/init-submodules.sh`.

---

## Submodule Status

> Auto-updated daily by GitHub Actions. Sorted by last updated (most recent first).

<!-- SUBMODULE-STATUS:START -->
| Repository | Path | Last Updated |
|:-----------|:-----|:-------------|
| [projectdiscovery/nuclei-templates](https://github.com/projectdiscovery/nuclei-templates) | `nuclei-templates` | 2026-03-23 |
| [trickest/wordlists](https://github.com/trickest/wordlists) | `wordlists` | 2026-03-22 |
| [danielmiessler/SecLists](https://github.com/danielmiessler/SecLists) | `SecLists` | 2026-03-22 |
| [trickest/resolvers](https://github.com/trickest/resolvers) | `resolvers` | 2026-03-22 |
| [0x727/FingerprintHub](https://github.com/0x727/FingerprintHub) | `fingerprint/FingerprintHub` | 2026-03-22 |
| [projectdiscovery/cdncheck](https://github.com/projectdiscovery/cdncheck) | `fingerprint/cdncheck` | 2026-03-22 |
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

| Repository                                              | Description                                                                                               |
|:--------------------------------------------------------|:----------------------------------------------------------------------------------------------------------|
| [PayloadsAllTheThings](https://github.com/swisskyrepo/PayloadsAllTheThings) | A curated list of payloads and bypasses for web application security testing and pentests.                |
| [SecLists](https://github.com/danielmiessler/SecLists)                                   | A comprehensive collection of usernames, passwords, URLs, fuzzing payloads, web shells, and more for security assessments. |
| [bruteforce-lists](https://github.com/random-robbie/bruteforce-lists)                  | Wordlists and data files tailored for brute-forcing various targets.                                       |
| [fuzzDicts](https://github.com/TheKingOfDuck/fuzzDicts)                                | Ready-to-use dictionaries designed specifically for web application fuzzing.                               |
| [leaky-paths](https://github.com/ayoubfathi/leaky-paths)                               | Known sensitive or misconfigured paths and endpoints for rapid content discovery.                          |
| [many-passwords](https://github.com/many-passwords/many-passwords)                     | Default and common credential lists for IoT devices, admin panels, and embedded systems.                   |
| [resolvers](https://github.com/trickest/resolvers)                                    | An exhaustive, validated list of reliable public DNS resolvers.                                           |
| [wordlists](https://github.com/trickest/wordlists)                                    | A curated collection of real-world wordlists for reconnaissance and brute-forcing.                         |

### Fingerprinting & Detection (selective sync)

| Repository                                              | Synced paths | Description                                                                           |
|:--------------------------------------------------------|:-------------|:--------------------------------------------------------------------------------------|
| [fingers](https://github.com/chainreactors/fingers)    | `resources/*.json.gz, *.yaml` | Pre-compiled fingerprint data (ehole, fingerprinthub, goby, wappalyzer, nmap, etc.)   |
| [FingerprintHub](https://github.com/0x727/FingerprintHub) | `web_fingerprint_v3.json` | Web technology fingerprint definitions.                                    |
| [EHole](https://github.com/EdgeSecurityTeam/EHole)     | `finger.json` | Fingerprint rules for identifying web frameworks and CMS.                             |
| [cdncheck](https://github.com/projectdiscovery/cdncheck) | `sources_data.json` | CDN, WAF, and cloud provider IP ranges.                                         |

### Vulnerability Templates

| Repository                                              | Description                                                                                               |
|:--------------------------------------------------------|:----------------------------------------------------------------------------------------------------------|
| [nuclei-templates](https://github.com/projectdiscovery/nuclei-templates) | Community-curated vulnerability templates for the Nuclei scanner.                     |

