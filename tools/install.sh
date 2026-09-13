#!/usr/bin/env sh
set -eu

repository_root=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
source_root="$repository_root/skills"
skill_names="create-issue resolve-issue learn-skill security-review test-changes manage-version-control"
target_roots="$HOME/.codex/skills $HOME/.claude/skills $HOME/.cursor/skills $HOME/.gemini/skills $HOME/.agents/skills"

for target_root in $target_roots; do
  mkdir -p "$target_root"

  for skill_name in $skill_names; do
    source="$source_root/$skill_name"
    destination="$target_root/$skill_name"

    if [ ! -f "$source/SKILL.md" ]; then
      echo "Missing SKILL.md for $skill_name" >&2
      exit 1
    fi

    mkdir -p "$destination"
    cp -R "$source/." "$destination/"
  done

  echo "Installed skills to $target_root"
done
