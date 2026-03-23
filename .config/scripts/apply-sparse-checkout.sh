#!/usr/bin/env bash
# Reads .sparse-checkout-config and applies sparse checkout to submodules.
# Called by git hooks (post-checkout, post-merge) or manually after submodule init.
# Config format: submodule_path:pattern1,pattern2,...
set -euo pipefail

REPO_ROOT="$(git rev-parse --show-toplevel)"
SPARSE_CONFIG="$REPO_ROOT/.config/sparse-checkout-config"

if [[ ! -f "$SPARSE_CONFIG" ]]; then
  exit 0
fi

while IFS=':' read -r sm_path paths; do
  [[ -z "$sm_path" || "${sm_path:0:1}" == "#" ]] && continue
  submodule_path="$REPO_ROOT/$sm_path"
  [[ -d "$submodule_path/.git" || -f "$submodule_path/.git" ]] || continue

  # Skip if sparse checkout is already configured correctly
  if git -C "$submodule_path" sparse-checkout list &>/dev/null; then
    current="$(git -C "$submodule_path" sparse-checkout list 2>/dev/null | tr '\n' ',' | sed 's/,$//')"
    [[ "$current" == "$paths" ]] && continue
  fi

  echo "  -> Applying sparse checkout for $sm_path: $paths"
  IFS=',' read -ra path_array <<< "$paths"

  prefixed=()
  for p in "${path_array[@]}"; do
    [[ "$p" != /* ]] && p="/$p"
    prefixed+=("$p")
  done

  pushd "$submodule_path" > /dev/null
  git sparse-checkout init --no-cone
  git sparse-checkout set "${prefixed[@]}"
  popd > /dev/null
done < "$SPARSE_CONFIG"
