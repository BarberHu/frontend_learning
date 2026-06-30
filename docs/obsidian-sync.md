# Obsidian 每日总结同步方案

> 目的：把学习仓库中的当天学习记录，沉淀到 Obsidian 中，形成长期知识库。

## 推荐架构

```text
学习仓库
  progress.json
  logs/week-xx.md
  artifacts.md
  review-queue.md
        |
        v
Codex / script 生成每日总结
        |
        v
Obsidian Vault
  Learning/Frontend/YYYY-MM-DD-frontend-learning.md
```

## 三种同步方式

### 方式 A：Codex 辅助同步（推荐）

你对 Codex 说：

```text
使用 $frontend-learning-coach，总结我今天的学习内容，并导出到 Obsidian。
```

AI 应执行：

1. 读取 `progress.json`。
2. 读取当前 `logs/week-xx.md`。
3. 读取 `artifacts.md` 和 `review-queue.md`。
4. 总结当天学习内容。
5. 生成 Obsidian Markdown。
6. 写入你配置的 Obsidian vault。

优点：总结质量高，能归纳卡点和下一步。  
缺点：需要你告诉 AI Obsidian vault 路径，或提前配置。

### 方式 B：脚本模板同步

使用脚本：

```powershell
powershell -ExecutionPolicy Bypass -File scripts/export-daily-summary-to-obsidian.ps1 -VaultPath "D:\ObsidianVault"
```

脚本会读取 `progress.json`，生成一篇结构化 Markdown 到：

```text
<VaultPath>/Learning/Frontend/YYYY-MM-DD-frontend-learning.md
```

优点：稳定，不依赖 AI API。  
缺点：只能做模板化总结，不能自动提炼复杂卡点。

### 方式 C：完全自动化

后续可以用 Windows 任务计划程序每天晚上运行脚本。

适合节奏稳定之后再做。现在不建议过早自动化，否则会变成“自动生成空总结”。

## Obsidian 笔记模板

```markdown
---
type: frontend-learning-daily
date: YYYY-MM-DD
week: W01
phase: JS/TS 基础修复
tags:
  - frontend
  - learning-log
  - codex
---

# YYYY-MM-DD 前端学习总结

## 今日主线

## 今日产物

## 我现在能解释

## 今天踩的坑

## Codex 指出的关键问题

## 明天最小动作

## 关联

- [[前端就业路线]]
- [[WebGIS Agent 项目]]
```

## 重要原则

- 学习仓库是事实源，Obsidian 是知识沉淀层。
- 不要在 Obsidian 里重新维护一套进度，否则会双写混乱。
- 每天总结必须引用当天产物，否则只是情绪日记。

