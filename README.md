# Prompt Lib

One canonical library of explicit-invocation Agent Skills.

## Skills

- `create-issue` — draft or publish a tracker issue
- `resolve-issue` — diagnose, fix, verify, and optionally deliver an issue
- `learn-skill` — create a goal-based learning system

## Install globally

Run: 
```
npx skill add Clicxl/Prompt_Lib
```
## Invoke

Use the skill name shown by the client. Codex commonly uses `$skill-name`; clients that expose skills as slash commands commonly use `/skill-name`. Each skill is configured for explicit invocation in Codex.

Edit only the canonical folders under `skills/`, then rerun the installer to publish updates. Agent-specific wrappers belong under `adapters/` only when a client cannot consume the canonical format directly.
