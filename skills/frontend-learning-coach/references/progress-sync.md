# Progress Sync Reference

Use this reference when syncing Wang Yang's daily frontend learning progress.

## Fact Sources

Read these files from the roadmap repository:

1. `progress.json`: machine-readable learning state.
2. `skills/frontend-learning-coach/references/roadmap-overview.md`: strategic snapshot.
3. `logs/week-xx.md`: human daily log and weekly review.
4. `docs/learning-map.md`: 24-week roadmap and acceptance criteria.
5. `docs/daily-study-workflow.md`: daily execution process.
6. `review-queue.md`: spaced repetition queue.
7. `artifacts.md`: resume evidence index.
8. `docs/weekly-rubric.md`: weekly scoring criteria.

Do not rely on memory if the files disagree. Prefer the repository files.

## progress.json Shape

Use this shape:

```json
{
  "schemaVersion": 1,
  "repoPath": "E:/frontend-webgis-agent-roadmap",
  "currentWeek": "W01",
  "currentPhase": "JS/TS 基础修复",
  "activeLog": "logs/week-01.md",
  "learningMap": "docs/learning-map.md",
  "dailyWorkflow": "docs/daily-study-workflow.md",
  "lastSyncDate": null,
  "weeklyTimeBudgetHours": "15-25",
  "today": {
    "date": null,
    "timeBudgetHours": null,
    "mainTopic": null,
    "visibleArtifact": null,
    "status": "not-started"
  },
  "completedArtifacts": [],
  "blockers": [],
  "nextMicroActions": [
    "写一个闭包计数器练习",
    "让 Codex 审查练习代码",
    "在 logs/week-01.md 填写 Day 1"
  ]
}
```

## Daily Sync Output

When asked to plan today, output:

```text
今天唯一主线：
时间预算：
今日任务：
验收标准：
Codex 评审提示词：
今晚复盘要写：
```

Keep the plan small. A valid day only needs one visible artifact.

## Updating Progress

When the user asks to persist progress:

1. Update `progress.json.lastSyncDate`.
2. Update `today.date`, `today.timeBudgetHours`, `today.mainTopic`, `today.visibleArtifact`, and `today.status`.
3. Append new completed artifacts to `completedArtifacts`.
4. Add unresolved issues to `blockers`.
5. Replace `nextMicroActions` with 2-4 concrete next actions.
6. Update the matching day section in `logs/week-xx.md`.
7. Add new concepts to `review-queue.md` when they need D+1/D+3/D+7 review.
8. Add visible outputs to `artifacts.md` when there is a real artifact.

Never invent completed work. If the user did not provide evidence, mark it as planned or blocked, not completed.

## Review Criteria

A learning day counts only if at least one is true:

- code was written
- a note was written
- a bug was fixed
- Codex reviewed code
- a README/log was updated
- a commit was created

Watching videos or reading articles alone is not enough.
