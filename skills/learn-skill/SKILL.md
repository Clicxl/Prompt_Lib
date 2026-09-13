---
name: learn-skill
description: Build a realistic, goal-based learning roadmap, practice system, resource path, and reusable progress tracker. Use when explicitly invoked to learn a new skill.
---

# Learn a Skill

## Intake

After invocation, use the agent's question UI when available; otherwise show a compact numbered menu. Do not require command arguments.

Collect only missing information:

1. Skill and measurable goal
2. Available timeframe and daily or weekly practice time
3. Tracking: Offline / Markdown or Obsidian / Notion template
4. Relevant experience, constraints, and preferred learning style

After learning the goal, generate a goal-specific 0–5 scale and show it as a selection menu. Level 0 means no relevant ability; level 5 means independent mastery of the stated goal. Define levels 1–4 as observable milestones tailored to that goal, then ask the user to select the closest level.

## Workflow

1. Research current resources. Prioritize official documentation, recognized institutions, and primary sources for factual guidance. Use Reddit, YouTube, and similar communities only for learner experiences, common obstacles, and practical perspective; verify factual claims elsewhere.
2. Give a qualitative feasibility assessment: Realistic / Ambitious / Unlikely. State the assumptions. If needed, offer a smaller goal, longer timeframe, or different practice commitment and let the user choose.
3. Identify the smallest set of high-impact fundamentals that drives progress toward the goal. Retain prerequisites and safety-critical knowledge even when they are not immediately rewarding.
4. Build a chronological roadmap with observable checkpoints, practice tasks, and completion criteria. Prefer one primary resource and at most one optional alternative per stage.
5. Create a sustainable practice system that fits the available time and includes feedback, retrieval, and hands-on creation where appropriate.
6. Return a copyable tracker template for the chosen method. Do not claim to create or modify an external workspace unless the user separately requests and authorizes it.

## Tracker template requirements

Keep tracking to a short end-of-session ritual containing: date, activity, duration, evidence produced, difficulty, next action, and checkpoint progress.

## Result

Return the selected level scale, feasibility assessment, roadmap, practice rhythm, curated resources, tracker template, assumptions, and the first concrete session.
