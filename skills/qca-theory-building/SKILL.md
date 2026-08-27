---
name: qca-theory-building
description: 基于QCA的理论构建、扩展与应用互补参考指引。执行 fsQCA 分析时须同步加载 qca-companion 做互补校对。
license: MIT
metadata:
  version: "1.1.0"
  type: qca-complementary-reference
  companion: qca-companion
  sources:
    - 马鸿佳, 王亚婧, 苏中锋 (2024). 资源编排理论 + fsQCA 数字化扩展（南开管理评论）
    - 马鸿佳 (2024). 混合方法（层次回归 + fsQCA）打破数据孤岛（管理世界）
---

# 基于 QCA 的理论构建、扩展与应用（互补参考指引）

> **互补定位**：本技能是 QCA 方法论的「互补参考指引」，与 `qca-analysis-expert`（技术执行层）形成"指引/校对 vs 执行"分工。凡调用 fsQCA 相关技能做分析，须同步加载 `qca-companion` 做互补校对。
> **来源材料**：QCA 理论构建、扩展与应用（综合公开论文、教材与领域共识蒸馏，未披露任何未公开课件）。

## 1. 何时使用本技能

- 你正在用 QCA/fsQCA 做研究，需要把**组态结果上升为理论贡献**，而不仅是报告充分条件。
- 你需要判断自己的研究属于 **理论检验 / 理论构建 / 理论扩展** 哪一种形态（47）。
- 审稿/自审时想确认"理论贡献"是否充分（编辑关切：理论贡献不能太浅、不能只停留在情境贡献或方法贡献）。
- 你打算采用 **dfsQCA、扎根理论启发的 QCA、或带调节的组态分析** 等进阶设计（28, 41）。
- 你要在引言/讨论中论证：为何用集合论/组态视角能克服理论视角重叠带来的问题。

## 2. 核心知识

### 2.1 三种推理模式与贡献形态
- **推理模式**：QCA 研究可采用归纳（inductive）/ 演绎（deductive）/ 溯因（abductive）。迄今 IS 领域的 QCA 研究**主要遵循溯因模式**。
- **理论—数据对话三角**（47）：
  - **Theory Testing（理论检验）**：偏演绎。例：Sun et al. (2024)、Meier et al. (2023)。
  - **Theory Building（理论构建）**：偏归纳。例：Huang et al. (2024)。
  - **Theory Extension（理论扩展）**：本质是溯因。例：Ma et al. (2023)。
- IS 特刊目标：以 QCA 作为 **configurational, comparative approach**，跨越定性与定量鸿沟。

### 2.2 (1) QCA 理论检验（Theory Testing）
- **Sun et al. (2024)** 两条组态假设检验原则（18）：
  1. **Matching theorized–observed configurations（理论化与观测组态匹配）**——四种可能：
     | 情形 | 含义 |
     |---|---|
     | 理论化且观测到 | 假设**支持** |
     | 理论化但未观测到 | 假设**条件性支持** |
     | 未理论化但观测到 | 假设**被拒且涌现新发现** |
     | 未理论化也未观测到 | **一致但无关**（因组态非对称性） |
  2. **Anatomical fashion（解剖式分析组态）**：理论化组态时须同时论证某要素的**存在/缺失**，以及与其他相关要素的**共现/共缺**。
- **Meier et al. (2023)** 用 **dfsQCA（演绎式 fsQCA）+ 混合方法**：先用理论命题（布尔记号）做演绎检验，再用定性研究三角验证（22）。其因果配方评估四格：
  | 布尔区 | 含义 |
  |---|---|
  | 重叠 E*T | 有实证支持 → **细化（refine）**理论 |
  | 非重叠 E*~T | 涌现实证发现 → **扩展（extend）**理论（被拒&涌现） |
  | 未覆盖 ~E*T | 未获支持配方 → **限定（delimit）**理论（部分支持） |
  | 遗漏 ~E*~T | 检查被忽视组态 → **一致但无关** |

### 2.3 (2) QCA 理论构建（Theory Building）
- **Huang et al. (2024) — 扎根理论启发的 QCA（grounded theory-informed QCA）**（37）：
  - 三阶段：① 扎根理论提炼数字颠覆驱动因素；② 探索性 QCA（N=21）归纳充分组态；③ 验证性 QCA（holdout N=33）检验涌现理论。
  - **关键步骤**：涌现理论能"挺过第二次实证评估"是 QCA 严谨理论发展的关键。
- 与常规 QCA 区别：
  - 常规 QCA：依赖**先验理论**选条件，适合成熟现象，多扩展而非创造新理论。
  - 扎根理论启发 QCA：**不依赖先验框架**，适合文献稀少的新现象，从扎根理论涌现新理论。
- 样本量：常规 QCA 适合小-N（<12）/ 中-N（12–50），已扩展到大-N；扎根理论启发 QCA 最契合小-N/中-N，大-N 因需逐案例深描而较难兼容。

### 2.4 (3) QCA 理论扩展（Theory Extension）
- **Ma et al. (2023) — 两阶段调节组态关系模板**（43, 46）：
  1. 第一阶段：不考虑调节变量，用 QCA 得到主 conjunctural causation。
  2. 第二阶段：纳入调节变量再跑 QCA，看其如何影响因果配方中各因素间的相互依赖。
  - **三项验证要求**：
    1. 两阶段间因果配方内**因果因素不变**（无新增/消失，存在/缺失状态不变）；
    2. 至少一个被调节组态出现**核心↔边缘条件**的变化（core→peripheral 或反之）；
    3. 至少一个被调节组态中，调节变量须为**核心存在条件**。

### 2.5 什么算"理论贡献"（编辑视角）
- 编辑关切：理论贡献不能"too shallow"；须澄清发现如何 **link back to prior work** 并扩展对现象的理解；不能只停留在**情境贡献（contextual）**或潜在**方法贡献（method）**，要讨论**实质/理论贡献（substantive/theoretical contribution）**。
- 审稿人肯定：当概念重叠会使对称检验出问题，采用**集合论方法能很好地克服**——这是用 QCA 做理论贡献的适切性理由。
- 组态理论的适用特征：**多重并发（equifinality）、联合因果（conjunctural causation）、因果非对称（causal asymmetry）**；最适合中-N（12–50）的因果复杂性情境。
  - 应用示例（合法性组合）：傅慧 等 (2024) 以合法性理论为框架、N=294 家独角兽企业为样本，用 fsQCA 识别出 4 条延展成长路径（同构/解耦/展示/赋能机制），示范了"理论框架→组态模型→多路径机制"的构建型写法（见 S3 §2.1、S1 §2）。
  - 应用示例（经典理论数字化扩展）：马鸿佳 等（南开管理评论, 2024）以资源编排理论为框架、N=392 家中小制造企业为样本，将五种传统资源能力（实物/关系/制造/营销/创新）与两种数字资源能力（大数据资源/数字平台能力）纳入组态，发现"数字平台能力"作为核心条件发挥普遍作用，并识别出内向型/外向型/内外兼顾型三条数字机会利用路径；进一步聚焦高技术制造业得渐进型/突破型两条路径。该研究示范了如何用组态视角把经典理论（资源编排）**拓展到数字化新情境与新构念**（数字资源能力），属"理论扩展"典型写法（见 S3 §2.1、S1 §2.1）。
  - **英文顶刊示范 · 何时用组态视角 + 混合理论化（Campbell & Fiss, 2026, AMR）**：AMR 论文系统提出"何时该用组态方法"的四项指征——**因果合取（conjunctural causation）、因果析取（disjunction）、结果非对称（outcome asymmetry）、结果意向性（outcome intentionality）**，并给出两类**组态—混合理论化（configurational hybrid theorizing）**路径：①组态—命题式（configurational-propositional），用组态视角生成关于复杂因果关系的新预测；②组态—过程式（configurational-process），通过"时间—组态分层（temporal-configurational layering）"纳入时序动态。该文是"先判断适不适合组态、再决定如何与命题/过程理论结合"的旗舰参照（见 S1 §2.1、S6 §2 动态/时序）。
  - **英文顶刊示范 · 模糊集理论与创业判断（Nobre, Packard, & Clark, 2026, ETP）**：ETP 论文论证模糊集理论为何特别适合刻画创业判断中的"部分隶属/程度差异"本质，主张以集合论（而非离散类别或线性评分）表达创业者的机会评估与决策，属"用 QCA 本体论深化理论建构"的前沿写法（见 S1 §2.5 校准、S6）。
- **英文顶刊示范 · 叙事理论与组态的嫁接（Anglin, Reid, & Short, 2023, ETP）**：把叙事理论的"故事元素"（人物/情节/场景）与组态思维结合，示范"引入新理论视角 → 重新操作化条件 → 产出组态理论"的扩展路径（理论扩展型写作范本，见 §2.1）。
- **英文顶刊示范 · 双重目的企业的财务/社会权衡（Wang, Guo, Chen, & Sun, 2026, JMS）**：以 fsQCA 刻画 DPC 权衡的异质性前因组态（缓解 vs. 社会主导 vs. 财务主导），示范"以因果非对称重构'权衡'议题"的理论化写法（见 §2.2）。
- **英文顶刊示范 · 从变量中心到组态中心的理论重构（Ong & Johnson, 2023, AMJ）**：针对 JD-R 研究中"多重乘积模型鲜获支持"的困境，转向"以人为中心"的组态视角，用三研究（three-study）fsQCA 识别足以导致衰竭/投入的需求-资源组态，提出 job demands-resources 的**组态理论（configural theory）**——示范"先诊断变量范式的理论困境，再以组态重构理论"的完整路径（见 §3）。
- **英文顶刊示范 · 经典理论的组态化改造（Fainshmidt, Smith, & Aguilera, 2022, OS）**：把制度理论整体转译为"新组态制度理论（neoconfigurational institutional theory）"以解释生而全球化企业（born globals）的来源；示范"不是局部扩展、而是整体转译为组态逻辑"的理论贡献类型（一致性 0.84–0.89、频数 1）。
- **英文顶刊示范 · 在理论空白处自建视角（Murthy & Madhok, 2021, JMS）**：数字平台生态系统早期涌现缺乏既有解释，作者以"解题视角（problem-solving perspective）"自建框架并用 fsQCA 检验；示范"理论稀缺情境 + 组态方法"的建构路线（一致性 0.77–0.86）。
- **英文顶刊示范 · 构念组态化（Jiang, Zheng, Fan, Zhang, & Li, 2021, JMS）**：共享经济情境下把商业模式设计操作化（含资产轻盈度 asset-lightness），检验设计要素组合对绩效的影响；示范"新商业模式构念 → 可校准条件"的转化路径（一致性 0.83–0.92、频数 2）。

## 3. 理论构建实操要点（步骤清单）

> 目标：把组态结果上升为"理论贡献"，而非仅报告充分条件。

1. **定位贡献形态**：先明确本文是检验 / 构建 / 扩展（ 47）。
2. **选设计**：
   - 检验 → 用 dfsQCA 或 a priori 配方，做 theorized–observed 匹配（ 18）。
   - 构建 → 新现象用扎根理论启发 QCA；成熟现象用先验理论选条件（ 38）。
   - 扩展 → 用两阶段法处理调节。
3. **用布尔记号写理论命题/配方**，便于与实证组态比对（ 27, 35）。
4. **解剖式论证组态**：对每个要素同时说明其存在/缺失及与他要素的共现/共缺。
5. **做四格评估**：重叠=细化、非重叠=扩展、未覆盖=限定、遗漏=查漏。
6. **混合方法三角验证**（如适用）：定量找组态 + 定性深挖要素间互动（ 25, 27）。
7. **构建型须设 holdout 验证**：探索性→验证性两批样本，让理论"挺过第二次评估"。
8. **写讨论时回链先验文献**：澄清如何扩展/修正既有理解，明确区分情境/方法/理论三类贡献。

《领域共识》：QCA 论文讨论段常含"命题（propositions）"作为理论要点；组态结果宜以图形/表格呈现充分组态。

## 4. 常见误区与避坑

- **理论贡献过浅**：只报"哪几条路径导致结果"，不回链文献、不说明修正了什么理解。→ 必须讨论 substantive/theoretical contribution。
- **混淆四种匹配结论**：把"未理论化但观测到"当作支持，或忽略"一致但无关"的非对称性。→ 严格按四情形判定。
- **组态论证不解剖**：只说要素共现，未说明某要素缺失的作用。→ 用 anatomical fashion。
- **理论构建却硬套先验框架**：对文献稀少的新现象仍用常规 a priori QCA，错失创造新理论机会。→ 改用扎根理论启发 QCA。
- **构建型缺验证样本**：仅探索性 QCA 就宣称理论，未做 holdout 确认。
- **调节分析不满足三要求**：第二阶段改了因果因素、或无核心↔边缘变化、或调节变量非核心（ 46）。
- ⚠️待核实：文本未给出具体期刊投稿字数/图表格式要求；以目标期刊指南为准。

## 5. 与 qca-analysis-expert 的互补边界

| 维度 | qca-analysis-expert（执行层） | 本技能（指引/校对层） |
|---|---|---|
| 焦点 | 校准、必要性/充分性分析、真值表、一致性阈值等技术操作 | 理论贡献形态、从数据到理论的上升路径、贡献表述 |
| 何时用 | 跑 fsQCA、处理数据与结果 | 设计研究框架、写引言/讨论、审稿自查理论贡献 |
| 不覆盖 | — | 不替代具体软件操作；技术细节以 `qca-analysis-expert` 为准 |

> 凡涉及 fsQCA 实际操作，须同步加载 `qca-companion` 做互补校对（见 frontmatter）。本技能不规定校准/阈值等执行参数。

## 6. 关键引用（APA）

- Huang, S., Burton-Jones, A., & Xu, D. (2024). A configurational theory of digital disruption. *Information Systems Journal, 34*(5), 1737–1786.
- Iannacci, F., Techatassanasoontorn, A., Zhou, Z. P., & Tan, C.-W. (2025). Editorial: Transcending the qualitative–quantitative divide in IS research using QCA as a configurational, comparative approach. *Information Systems Journal*, 35(2), 814–820. https://doi.org/10.1111/isj.12556
- Ma, T., Cheng, Y., Guan, Z., Li, B., Hou, F., & Lim, E. T. K. (2024). Theorising moderation in the configurational approach: A guide for identifying and interpreting moderating influences in QCA. *Information Systems Journal, 34*(3), 762–787.
- Meier, M., Maier, C., Thatcher, J. B., & Weitzel, T. (2024). Cooking a telework theory with causal recipes: Explaining telework success with ICT, work and family related stress. *Information Systems Journal, 34*(4), 1068–1115.
- Sun, Y., Tan, C. W., Lim, K. H., Liang, T. P., & Yeh, Y. H. (2024). Strategic contexts, strategic orientations and organisational technology adoption: A configurational approach. *Information Systems Journal, 34*(4), 1355–1401.
- Zhou, Z., Fang, Y., & Straub, D. (2023). *The critical need to re-balance theory building and testing in the IS field*. SSRN: https://ssrn.com/abstract=4351566
- 傅慧, 郭希婕, 肖雄辉. (2024). 合法性组合如何促进独角兽企业的延展成长：基于模糊集的定性比较分析. *中国软科学*, (9), 132–141.
- 马鸿佳, 王亚婧, 苏中锋. (2024). 数字化转型背景下中小制造企业如何编排资源利用数字机会？——基于资源编排理论的 fsQCA 研究. *南开管理评论*, 27(4), 90–100, 208.
- 马鸿佳. (2024). 制造企业平台化转型如何打破"数据孤岛"？——基于人—数交互理论的混合方法研究. *管理世界*, 2024(4).
- Campbell, J. T., & Fiss, P. C. (2026). Tackling the complexity challenge: When and how to engage in configurational and hybrid theorizing. *Academy of Management Review*. Advance online publication. https://doi.org/10.5465/amr.2024.0187
- Nobre, F. S., Packard, M. D., & Clark, B. B. (2026). The promise of fuzzy set theory for entrepreneurial judgment. *Entrepreneurship Theory and Practice*, 50(3), 757–788. https://doi.org/10.1177/10422587251388026
- Anglin, A. H., Reid, S. W., & Short, J. C. (2023). More than one way to tell a story: A configurational approach to storytelling in crowdfunding. *Entrepreneurship Theory and Practice*, 47(2), 461–494. https://doi.org/10.1177/10422587221082679
- Wang, F., Guo, C., Chen, J., & Sun, S. L. (2026). Financial/social trade-offs in dual-purpose companies. *Journal of Management Studies*, 63(6), 3097–3132. https://doi.org/10.1111/joms.13257
- Ong, W. J., & Johnson, M. D. (2023). Toward a configural theory of job demands and resources. *Academy of Management Journal*, 66(1), 195–221. https://doi.org/10.5465/amj.2020.0493

> 方法学基础（文中援引）：《领域共识》Ragin (1987, 2008)、Schneider & Wagemann (2012)、Fiss (2007)、Park, Fiss, & El Sawy (2020) 为 QCA 组态理论常用文献，具体页码以原书/文为准。
