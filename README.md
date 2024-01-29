# hackPanion
Have your favourite repositories, always upt-to-date - available in a single repo.

## Clone

`git clone --recursive --depth 1 git@github.com:gosirys/hackPanion.git`

## Pull
`git pull --recurse-submodules --depth=1`

## First Setup

Cloning
```
cd hackPanion
git clone --depth 1 https://github.com/swisskyrepo/PayloadsAllTheThings
git clone --depth 1 https://github.com/danielmiessler/SecLists
git clone --depth 1 https://github.com/random-robbie/bruteforce-lists
git clone --depth 1 https://github.com/TheKingOfDuck/fuzzDicts
git clone --depth 1 https://github.com/ayoubfathi/leaky-paths
git clone --depth 1 https://github.com/many-passwords/many-passwords
git clone --depth 1 https://github.com/trickest/resolvers
git clone --depth 1 https://github.com/trickest/wordlists
```

```
mkdir -p tools/Burp/bapps
git clone --depth 1 https://github.com/xnl-h4ck3r/GAP-Burp-Extension tools/Burp/bapps/GAP-Burp-Extension/
git clone --depth 1 https://github.com/mdsecresearch/BurpSuiteSharpener tools/Burp/bapps/BurpSuiteSharpener/
git clone --depth 1 https://github.com/nccgroup/LoggerPlusPlus tools/Burp/bapps/LoggerPlusPlus/
git clone --depth 1 https://github.com/sleeyax/burp-awesome-tls tools/Burp/bapps/burp-awesome-tls/
git clone --depth 1 https://github.com/ethicalhackingplayground/TProxer tools/Burp/bapps/TProxer/
```

Setting as submodules

```
git submodule add --depth 1 https://github.com/swisskyrepo/PayloadsAllTheThings
git submodule add --depth 1 https://github.com/danielmiessler/SecLists
git submodule add --depth 1 https://github.com/random-robbie/bruteforce-lists
git submodule add --depth 1 https://github.com/TheKingOfDuck/fuzzDicts
git submodule add --depth 1 https://github.com/ayoubfathi/leaky-paths
git submodule add --depth 1 https://github.com/many-passwords/many-passwords
git submodule add --depth 1 https://github.com/trickest/resolvers
git submodule add --depth 1 https://github.com/trickest/wordlists

cd tools/Burp/bapps/

git submodule add --depth 1 https://github.com/xnl-h4ck3r/GAP-Burp-Extension
git submodule add --depth 1 https://github.com/mdsecresearch/BurpSuiteSharpener
git submodule add --depth 1 https://github.com/nccgroup/LoggerPlusPlus
git submodule add --depth 1 https://github.com/sleeyax/burp-awesome-tls
git submodule add --depth 1 https://github.com/ethicalhackingplayground/TProxer
```

Github actions
```
name: Pull Submodules & Repackage

on:
  schedule:
    - cron: '50 18 * * *' 
  workflow_dispatch:

jobs:
  update:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout repository with submodules
      uses: actions/checkout@v3
      with:
        submodules: recursive
        repository: ${{ github.repository }}
        token: ${{ secrets.GITHUB_TOKEN }}
        
    - name: Set up Git
      run: |
        git config --local user.email "action@github.com"
        git config --local user.name "GitHub Action"

    - name: Pull latest changes for the main repo
      run: git pull origin $(git branch --show-current)

    - name: Update submodules to the latest commit
      run: |
        git submodule update --init --recursive --depth=1  # Initialize all submodules first
        git submodule foreach --recursive 'git fetch origin && git reset --hard origin/$(git rev-parse --abbrev-ref HEAD) || echo "Failed to reset submodule"'

    - name: Commit and push submodule changes
      run: git diff --quiet && git diff --staged --quiet || (git add . && git commit -m "Updated submodules" && git push --force-with-lease)

```

## Individual files tracking

This action can be useful if your repo depends on specific files in other repo and you want to be notified every time these files are changed.
From: https://github.com/poll-github-repo/action

This should be adaptable to update your repo based on the files it needs from the tracked repos, rather than just creating an issue.

Example:
```
name: test

on:
  push:
    branches: [ main ]

jobs:
  test:
    name: test
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: poll-github-repo/action@v1
        with:
          repo-to-sync: poll-github-repo/dummy-source-repo
          
          # Path to the file in <repo-to-sync> that you want to track
          path-to-sync: data.txt

          # NOTE: this file (cache-path) MUST exist before the action runs
          cache-path: .last-sync
          tracking-issue-label: upstream-data-txt
          tracking-issue-title: "Update on {{ path }}: {{ sha-short }}"
          tracking-issue-body: |
            New commit in poll-github-repo/dummy-source-repo:

            **{{ message }}** [link]({{ url }})
          token: ${{ secrets.GITHUB_TOKEN }}
          yes-create-issues: true
```
