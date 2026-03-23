#!/usr/bin/env bash
# Reads .sparse-checkout-config and applies sparse checkout to fingerprint submodules.
# Called by git hooks (post-checkout, post-merge) or manually after submodule init.
set -euo pipefail

REPO_ROOT="$(git rev-parse --show-toplevel)"
SPARSE_CONFIG="$REPO_ROOT/.sparse-checkout-config"

if [[ ! -f "$SPARSE_CONFIG" ]]; then
  exit 0
fi

while IFS=':' read -r name paths; do
  [[ -z "$name" ]] && continue
  submodule_path="$REPO_ROOT/fingerprint/$name"
  [[ -d "$submodule_path/.git" || -f "$submodule_path/.git" ]] || continue

  # Skip if sparse checkout is already configured correctly
  if git -C "$submodule_path" sparse-checkout list &>/dev/null; then
    current="$(git -C "$submodule_path" sparse-checkout list 2>/dev/null | tr '\n' ',' | sed 's/,$//')"
    expected="$paths"
    [[ "$current" == "$expected" ]] && continue
  fi

  echo "  -> Applying sparse checkout for $name: $paths"
  IFS=',' read -ra path_array <<< "$paths"

  has_files=false
  for p in "${path_array[@]}"; do
    if [[ "$p" != */ ]]; then
      has_files=true
      break
    fi
  done

  pushd "$submodule_path" > /dev/null
  if $has_files; then
    prefixed=()
    for p in "${path_array[@]}"; do
      [[ "$p" != /* ]] && p="/$p"
      prefixed+=("$p")
    done
    git sparse-checkout init --no-cone
    git sparse-checkout set "${prefixed[@]}"
  else
    git sparse-checkout init --cone
    git sparse-checkout set "${path_array[@]}"
  fi
  popd > /dev/null
done < "$SPARSE_CONFIG"
