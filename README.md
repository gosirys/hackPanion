# hackPanion

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
        token: ${{ secrets.GITHUB_TOKEN }}

    - name: Set up Git
      run: |
        git config --local user.email "not@osirys.me"
        git config --local user.name "Osirys"
    - name: Pull latest changes for the main repo
      run: git pull origin $(git branch --show-current) || echo "Failed to pull latest changes"

    - name: Update submodules to the latest commit
      run: |
        git submodule update --init --recursive --depth=1  # Initialize all submodules first
        git submodule foreach --recursive 'git checkout $(git rev-parse --abbrev-ref HEAD) && git pull --depth=1 origin || echo 
"Failed to update submodule"'
    - name: Commit and push submodule changes
      run: git diff --quiet && git diff --staged --quiet || (git add . && git commit -m "Updated submodules" && git push 
--force-with-lease || echo "Push failed")

```

