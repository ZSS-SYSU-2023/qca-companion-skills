# 使用指南 · Usage Guide

> 中文主导，附英文要点。适用于 WorkBuddy 技能体系。
> Chinese-led, with English notes. For the WorkBuddy skill system.

---

## 一、导入到 WorkBuddy · Import into WorkBuddy

**中文**：
1. 将本仓库 `skills/` 目录克隆或下载到本地。
2. 把 `skills/` 下的**任一子目录**（如 `qca-fsqca-practice/`）整体复制到你的 WorkBuddy 技能目录，默认路径为：
   - Windows：`C:\Users\<你的用户名>\.workbuddy\skills\`
   - macOS / Linux：`~/.workbuddy/skills/`
3. 复制后重启/刷新 WorkBuddy 会话，技能即被识别。
4. 建议先调用 **`qca-companion`**（总纲/导航），它会告诉你在研究的不同阶段该用哪个子技能。

**English**:
1. Clone or download the `skills/` directory of this repo.
2. Copy any subdirectory under `skills/` (e.g., `qca-fsqca-practice/`) into your WorkBuddy skills directory (`~/.workbuddy/skills/`).
3. Restart/refresh the WorkBuddy session; the skill becomes discoverable.
4. We recommend invoking **`qca-companion`** first—it routes you to the right sub-skill per research phase.

---

## 二、各技能的典型触发场景 · When to Use Which Skill

| 你在做什么 | 调用的技能 |
|---|---|
| 想理解组态视角、并发因果/非对称/等效性 | `qca-configurational-theory` |
| 要从理论出发设计 QCA 研究、画命题 | `qca-theory-building` |
| 要定案例、条件、三锚点校准、样本量 | `qca-research-design` |
| 要写 QCA 论文、画真值表/组态表、回应审稿人 | `qca-writing-publication` |
| 要跑 fsQCA、定阈值（一致性/覆盖度/PRI/频数）、看三解 | `qca-fsqca-practice` |
| 要做动态/时序 QCA、NCA+fsQCA、面板/聚类 QCA | `qca-advanced-frontiers` |
| 要 QCA 与扎根/层次回归等混合方法衔接 | `qca-mixed-methods` |

---

## 三、与执行层的关系 · Relationship with the Execution Layer

**中文**：本包是**方法论/写作层**，提供阈值共识、写作模板、文献锚点，不修改你的数据、不直接运行算法。若你需要真正运行 fsQCA，请配合使用本地独立的执行层技能 **`qca-analysis-expert`**（未随本仓库发布，仅作互补引用）。二者职责分离。

**English**: This pack is the **methodology/writing layer**—it offers threshold consensus, writing templates, and literature anchors, but does not mutate your data or run algorithms. To actually run fsQCA, pair it with the locally independent execution-layer skill **`qca-analysis-expert`** (not shipped in this repo; referenced only as a complement). Responsibilities are separated.

---

## 四、调用示例（对话）· Example Prompts

- "我要写一篇用 fsQCA 研究创业导向组态的论文，给我一个从理论到写作的完整路线图。" → 先 `qca-companion`，再 `qca-theory-building` + `qca-writing-publication`。
- "帮我校准三个锚点并判断必要性一致性阈值。" → `qca-research-design` + `qca-fsqca-practice`。
- "审稿人说我的 PRI 太低，怎么回应？" → `qca-writing-publication` + `qca-fsqca-practice` §稳健性。

---

## 五、版本 · Version

v1.1.0（2026-08）。融合来源见仓库 `README.md` 第六节。如发现问题或想补充文献，欢迎在仓库提 Issue / PR。

---

## 六、跨平台：Claude Code / Codex · Cross-Platform

**中文**：本包正文是纯 Markdown 方法论，**内容可移植到任何读取 Markdown 的智能体**（Claude Code、Codex、Cursor 等）；需要适配的仅是"外壳格式"与"自动触发机制"。完整兼容性结论见 `README.md` 第十节。

**Claude Code 快速接入（二选一）**
1. 复制 `skills/*` → `~/.claude/skills/`（或项目 `.claude/skills/`），用 `/qca-companion` 等斜杠命令调用；Claude Code 读取 `name`/`description`，忽略 `metadata`/`triggers`。
2. 或在项目 `CLAUDE.md` 加入：
```
涉及 QCA / fsQCA / 定性比较分析 的任务，先阅读
qca-companion-skills/skills/qca-companion/SKILL.md 及其引用的 S1–S7 技能，
并遵守其阶段闸门（Phase 0–9）与准确性红线（一致性≥0.80、PRI≥0.70、频数阈值等）。
```

**Codex 快速接入**：在项目根 `AGENTS.md` 加入：
```
When a task involves QCA / fsQCA / configurational analysis,
read the relevant skills/qca-*/SKILL.md from the qca-companion-skills repo
and follow its phase gates (Phase 0–9) and accuracy red-lines
(consistency ≥ 0.80, PRI ≥ 0.70, frequency cutoff, etc.).
Do NOT fabricate thresholds—use the documented consensus values.
```

**English**: The pack body is pure Markdown methodology and is **portable to any Markdown-reading agent** (Claude Code, Codex, Cursor, etc.); only the wrapper format and auto-trigger need adaptation. Full compatibility verdict: see `README.md` §10. Quick wiring—Claude Code: copy `skills/*` to `~/.claude/skills/` and call `/qca-companion`, or add a note to `CLAUDE.md`. Codex: add a directive to project-root `AGENTS.md` telling it to read the relevant `skills/qca-*/SKILL.md` for QCA tasks.

**⚠️ 共同提醒**：本包是**方法论导航层、不是计算器**——任何平台都不会替你跑 fsQCA。真值表 / 布尔最小化 / 三种解等计算须自备 R 环境（`QCA` / `QCAcluster` 包）或执行路径；本包只负责"该不该做、参数合不合理、结果怎么解读、论文怎么写"。`qca-analysis-expert`（执行层，WorkBuddy 专属）不在本仓库。
