# QCA 互补技能包 · QCA Companion Skills

> 面向管理学实证研究的 QCA / fsQCA 开源技能集合（中文 + English）  
> An open-source companion skill collection for QCA / fsQCA configurational research in management studies.

**English Lead Paragraph** · *for international readers*

`qca-companion-skills` is an open-source, bilingual (Chinese + English) toolkit of *companion skills* for researchers doing configurational / Qualitative Comparative Analysis (QCA) in management and organization studies. It covers the full methodological chain—configurational theory, theory building, research design, calibration, necessity/sufficiency analysis, robustness, academic writing, advanced frontiers (e.g., time/panel QCA, NCA + fsQCA), and mixed methods—while deliberately separating a *methodology & writing layer* from any *execution layer*. It is anchored in canonical Chinese empirical work (Du Yunzhou, Ma Hongjia, et al.) and the R `QCA` / `QCAcluster` open-source ecosystem. The collection is released under the MIT License; please cite it (see §7) when used.

---

## 一、项目简介 · Project Overview

**中文**：本仓库是一套围绕定性比较分析（QCA，含 csQCA / mvQCA / fsQCA / tQCA）打造的"互补型"技能包，定位为**方法论知识与写作导航层**。它系统梳理了组态视角（configurational perspective）的核心范式——并发因果（conjunctural causation）、非对称性（asymmetry）、等效性（equifinality）——并覆盖从理论构建、研究设计、校准、必要性/充分性分析、稳健性检验到论文写作与混合方法衔接的完整链条。内容以杜运周、马鸿佳等学者的代表性中文实证为锚，并融合 GitHub 上 R `QCA` / `QCAcluster` 开源生态。

**English**: This repository is a set of *companion* skills for Qualitative Comparative Analysis (QCA: csQCA / mvQCA / fsQCA / tQCA), positioned as a **methodological knowledge and writing-navigation layer**. It systematically organizes the core paradigms of the configurational perspective—conjunctural causation, asymmetry, and equifinality—and covers the full chain from theory building, research design, calibration, necessity/sufficiency analysis, robustness checks, to academic writing and mixed-methods integration. Content is anchored in representative Chinese empirical studies (Du Yunzhou, Ma Hongjia, et al.) and fused with the R `QCA` / `QCAcluster` open-source ecosystem on GitHub.

---

## 二、技能一览 · Skills at a Glance

| 目录 Directory                         | 中文名       | English Name           | 核心用途 Core Purpose                  |
| ------------------------------------ | --------- | ---------------------- | ---------------------------------- |
| `skills/qca-companion/`              | QCA 总纲·导航 | Companion & Index      | Entry point: scope & boundaries, and division of labor with other skills / the execution layer. |
| `skills/qca-configurational-theory/` | 组态理论与范式   | Configurational Theory | Conjunctural causation, asymmetry, equifinality; the philosophical foundations of QCA. |
| `skills/qca-theory-building/`        | QCA 理论构建  | Theory Building        | Propose/extend theory from a configurational view; derive truth-table–driven propositions. |
| `skills/qca-research-design/`        | QCA 研究设计  | Research Design        | Case selection, conditions & outcome, three-anchor calibration, sample-size rules. |
| `skills/qca-writing-publication/`    | QCA 写作与发表 | Writing & Publication  | Paper structure, figure/table conventions, reviewer-response playbook, robustness reporting. |
| `skills/qca-fsqca-practice/`         | fsQCA 实操  | fsQCA Practice         | Thresholds (consistency/coverage/PRI/frequency), the three solutions, and the R code ecosystem. |
| `skills/qca-advanced-frontiers/`     | 前沿专题      | Advanced Frontiers     | Dynamic/temporal QCA, NCA + fsQCA hybrids, panel/clustered QCA. |
| `skills/qca-mixed-methods/`          | 混合方法      | Mixed Methods          | Division of labor & integration of GTM + QCA and hierarchical regression + fsQCA. |



---

## 三、设计理念与定位 · Design Philosophy & Positioning

**中文**：本技能包刻意与"执行层"保持边界。它**不替代**任何会直接运行 fsQCA 算法、修改你数据的智能体；相反，它提供可复用的**方法论判断、阈值共识、写作模板与文献锚点**，让你（或你的执行层智能体）在做分析前有统一的"章法"。

- **与 `qca-analysis-expert` 的关系**：`qca-analysis-expert` 是本地独立的**执行层**技能（直接跑分析），**未纳入本仓库**，仅在此作为互补对象引用。本包 = 方法论/写作层；`qca-analysis-expert` = 计算/执行层。二者职责分离、互不修改。
- **与 GitHub R 生态的关系**：本包引用 R `QCA`（Adrian Dusa，v3.25，CCubes 算法）、`QCAcluster`（面板/聚类 QCA）等作为代码底座，但不捆绑任何具体实现。

**English**: This skill pack deliberately keeps a boundary with the *execution layer*. It does **not** replace any agent that directly runs fsQCA algorithms or mutates your data; instead, it provides reusable **methodological judgment, threshold consensus, writing templates, and literature anchors** so you (or your execution agent) share a common "playbook" before analysis.

- **Relationship with `qca-analysis-expert`**: `qca-analysis-expert` is a locally independent **execution-layer** skill (runs the analysis directly). It is **NOT included** in this repo and is referenced here only as a complement. This pack = methodology/writing layer; `qca-analysis-expert` = computation/execution layer. Responsibilities are separated and neither modifies the other.
- **Relationship with the GitHub R ecosystem**: This pack cites R `QCA` (Adrian Dusa, v3.25, CCubes algorithm) and `QCAcluster` (panel/clustered QCA) as the code foundation but bundles no specific implementation.

---

## 四、安装与使用 · Installation & Usage

**中文（WorkBuddy）**：将本仓库 `skills/` 下的任一子目录复制到你的 WorkBuddy 技能目录（如 `~/.workbuddy/skills/`）即可被识别；`qca-companion` 作为总纲，建议在对话中先调用它以获得导航。`docs/USAGE.md` 提供详细的导入与调用示例。

**English (WorkBuddy)**: Copy any subdirectory under `skills/` into your WorkBuddy skills directory (e.g., `~/.workbuddy/skills/`) to make it discoverable. We recommend invoking `qca-companion` first as the index. See `docs/USAGE.md` for detailed import and invocation examples.

---

## 五、目录结构 · Repository Structure

```
qca-companion-skills/
├── README.md              # 本文件（双语） · This file (bilingual)
├── LICENSE                # MIT License
├── CITATION.md            # 引用与参考文献（含待核验项标注） · Citation & references
├── docs/
│   └── USAGE.md           # 双语使用指南 · Bilingual usage guide
└── skills/
    ├── qca-companion/             SKILL.md
    ├── qca-configurational-theory/ SKILL.md
    ├── qca-theory-building/        SKILL.md
    ├── qca-research-design/        SKILL.md
    ├── qca-writing-publication/    SKILL.md
    ├── qca-fsqca-practice/         SKILL.md
    ├── qca-advanced-frontiers/     SKILL.md
    └── qca-mixed-methods/          SKILL.md
```

---

## 六、版本与溯源 · Version & Provenance

- **版本 Version**：v1.1.0（2026-08）。
- **融合来源 Fusion sources**：
  - 杜运周等（组态理论、营商环境生态、QCA 方法学）代表性中文实证与述评；
  - 马鸿佳等（2024）两篇实证：资源编排理论 fsQCA（N=392，南开管理评论）与层次回归 + fsQCA 混合（N=495，管理世界）；
  - GitHub R 开源生态：`QCA` v3.25（CCubes）、`QCAcluster`、`SetMethods` 等；
  - SkillHub（约 13,000+ 技能）调研结论：目前**无独立 fsQCA 技能**，故以 R 开源生态 + 本包为互补主体。
- **统一阈值共识 Consensus thresholds**：必要性一致性 ≥ 0.90；充分性一致性 ≥ 0.80（主流）；PRI ≥ 0.70（< 0.50 为严重矛盾）；频数阈值小样本=1、大样本（N>150）≥ 3；保留 ≥ 75–80% 案例。

**English**: Version v1.1.0 (2026-08). *Fusion sources*: (a) canonical Chinese empirical and review work by Du Yunzhou et al. on configurational theory, business-environment ecosystems, and QCA methodology; (b) two 2024 empirical studies by Ma Hongjia et al.—a resource-orchestration fsQCA (N = 392, *Nankai Business Review*) and a hierarchical-regression + fsQCA mixed design (N = 495, *Management World*); (c) the GitHub R open-source ecosystem: `QCA` v3.25 (CCubes algorithm), `QCAcluster`, `SetMethods`; (d) a SkillHub survey (~13,000+ skills) finding **no standalone fsQCA skill**, making the R ecosystem + this pack the complementary core. *Consensus thresholds*: necessity consistency ≥ 0.90; sufficiency consistency ≥ 0.80 (mainstream); PRI ≥ 0.70 (< 0.50 indicates severe contradictions); frequency cutoff = 1 for small samples and ≥ 3 for large samples (N > 150); retain ≥ 75–80% of cases.

---

## 七、引用 · How to Cite

本仓库可整体引用，亦可引用其中具体技能。建议格式见 `CITATION.md`。核心锚定文献（已核验）包括：杜运周、贾良定（2017）《管理世界》；杜运周等（2020）《管理世界》；Fiss（2011）；Ragin & Davey（2014）；Dusa（2026，`QCA` 包）；马鸿佳等（2024，南开管理评论；2024，管理世界）。

**English**: You may cite the whole repository or any individual skill. The recommended format is in `CITATION.md`. To cite this repository directly, use the following:

*APA (7th ed.)*:
> ZSS-SYSU-2023. (2026). *QCA companion skills* (Version 1.1.0) [Computer software]. GitHub. https://github.com/ZSS-SYSU-2023/qca-companion-skills

*BibTeX*:
```bibtex
@software{qca-companion-skills,
  author = {ZSS-SYSU-2023},
  title  = {QCA Companion Skills},
  year   = {2026},
  version = {1.1.0},
  url    = {https://github.com/ZSS-SYSU-2023/qca-companion-skills}
}
```

*Key anchored references (verified)*: Du & Jia (2017, *Management World*); Du et al. (2020, *Management World*); Fiss (2011); Ragin & Davey (2014); Dusa (2026, `QCA` package); Ma et al. (2024, *Nankai Business Review*; 2024, *Management World*).

---

## 八、许可证 · License

本项目以 **MIT License** 发布。详见 `LICENSE`。

**English**: Released under the **MIT License**. See `LICENSE`.

---

## 九、致谢 · Acknowledgements

感谢杜运周、马鸿佳等学者在组态方法与 QCA 本土化实证上的奠基性工作；感谢 R `QCA` / `QCAcluster` 开源社区提供的可复现代码底座。本技能包为方法论层面的梳理与融合，所有实证结论请以原刊为准。

**English**: We thank Du Yunzhou, Ma Hongjia, and other scholars for their foundational work on configurational methods and the localization of QCA empirical research in China, and the R `QCA` / `QCAcluster` open-source community for the reproducible code base. This skill pack is a methodological synthesis at the level of method and writing; all empirical conclusions should be credited to the original publications.

---

## 十、跨平台使用（Claude Code / Codex 等）· Cross-Platform Use

**中文**：本技能包的正文是**纯 Markdown 方法论知识**（阈值共识、阶段闸门、准确性红线、文献锚点），不调用任何 WorkBuddy 专属 API 或工具。因此它在任何支持读取 Markdown 的 AI 智能体（Claude Code、Codex、Cursor、其他本地 Agent）中**内容完全可移植**；需要适配的只是"外壳格式"与"自动触发机制"。

**兼容性结论 / Compatibility verdict**

| 维度 Dimension | 状态 Status | 说明 Notes |
|---|---|---|
| 方法论正文 Body | ✅ 100% 可移植 | 纯 Markdown，无平台绑定 |
| `name` / `description` 字段 | ✅ 兼容 | Claude Code 等原生读取 |
| `metadata` / `license` / `triggers` | ⚠️ 非通用 | 其他平台忽略或需改写；`triggers` 自动触发是 WorkBuddy 专属 |
| 执行层 `qca-analysis-expert` | ❌ 不在本仓库 | 该执行层为 WorkBuddy 专属、未随包发布；其他平台需自备 R 脚本（`QCA` / `QCAcluster`）执行 fsQCA |

**在 Claude Code 中使用 / Using with Claude Code**
- *方式 A（技能目录）*：把 `skills/` 下各子目录复制到 `~/.claude/skills/`（或项目内 `.claude/skills/`）。Claude Code 读取 `name` / `description` 并忽略 `metadata` / `triggers` 等额外字段；通过斜杠命令（如 `/qca-companion`）或描述匹配调用。
- *方式 B（CLAUDE.md）*：在 `CLAUDE.md` 写明"涉及 QCA/fsQCA 任务时，先阅读本仓库 `skills/qca-companion/SKILL.md` 及其引用的 S1–S7"。
- ⚠️ 注意：Claude Code **不会**自动执行"必须加载 `qca-companion`"的强制规则，须在 `CLAUDE.md` 显式声明，或手动调用。

**在 Codex 中使用 / Using with Codex**
- Codex 没有原生 `SKILL.md` 技能系统。请在项目根目录 `AGENTS.md` 中写明：任务涉及 QCA/fsQCA 时，读取本仓库对应 `skills/<name>/SKILL.md`（或把相关正文直接贴入 `AGENTS.md`）。
- 作为**编程智能体**，Codex 的实际用途是：撰写 fsQCA 的 R 脚本（`QCA` 包）、或对分析结果/论文做方法学把关时，参照本包的阈值与最佳实践。

**关键提醒 / Key caveat**：本包是**方法论与写作导航层，不是计算器**——它**不会**运行 fsQCA。在任意平台上，真值表 / 布尔最小化 / 三种解等计算都需你自备 R 环境或执行路径；本包只负责"该不该做、参数合不合理、结果怎么解读、论文怎么写"。具体接入片段见 `docs/USAGE.md` 第六节。

*Maintainer: ZSS-SYSU-2023*
