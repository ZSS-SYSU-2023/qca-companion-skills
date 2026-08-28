---
name: qca-fsqca-practice
description: fsQCA 软件操作与结果解读的实践参考：从校准、真值表到三种解的判读，顺带讲清常见误用和容易踩的坑。跑分析时搭配 qca-companion 一并校对。
license: MIT
metadata:
  version: "1.1.0"
  type: qca-complementary-reference
  companion: qca-companion
  sources:
    - 杜运周. fsQCA基本操作
    - 本轮融合（GitHub 调研）：R `QCA` 包 v3.25（Dusa）、`QCAcluster`（Rohlfing）、SetMethods/braQCA/qcaERT/ThSQCA/TSQCA、fs/QCA（Ragin & Davey 2014）、Tosmana（见 §2.9、§6）
---

# fsQCA 软件操作解读与避坑（互补参考指引）

> **互补定位**：本技能是 fsQCA 软件「人读操作 + 结果判读 + 避坑」互补参考，与 `qca-analysis-expert`（技术执行层，含 Python 工具链做校准/真值表/解计算）形成"判读/避雷 vs 计算"分工。凡调用 fsQCA 相关技能做分析，须同步加载 `qca-companion` 做互补校对。
> **来源材料**：fsQCA 基本操作序列（综合公开论文、教材与软件手册蒸馏，未披露任何未公开课件）。

## 1. 何时使用本技能

当你需要**读懂 fsQCA 软件在每一步在做什么、输出意味着什么、以及哪里容易踩坑**时使用本技能，典型场景：

- 拿到一份 fsQCA 结果（真值表、intermediate/complex/parsimonious solution、raw/unique coverage、solution consistency），需要判读与汇报；
- 校准阶段不确定锚点（fully in / crossover / fully out）该怎么设、直接法还是间接法；
- 真值表阈值（frequency cutoff、consistency cutoff、PRI）该取多大；
- 案例归属到哪一行/哪个组态，以及 0.5、0.001 转换的含义；
- 区分核心条件与边缘条件、识别常见误报与误读。

> 本技能**不重复实现**任何计算工具；凡需实际跑数据、算校准/真值表/解，交由 `qca-analysis-expert` 执行，本技能负责"读懂与避雷"。

## 2. 核心知识：fsQCA 标准操作流程

> 下列步骤以杜运周《fsQCA基本操作》操作序列为主线，辅以  补充。页码/幻灯片均标注出处。

### 2.1 Step1 校准（calibrate）—— 把原始数据变成 [0,1] 隶属度

- 校准函数语义：`Calibrate (x, fully in, crossover, fully out)`。
- fsQCA 把条件/结果数据校准为 **0～1 之间的模糊隶属分数**；csQCA 才是校准为 0/1。
- 三个锚点必须齐备：**完全隶属（fully in）／交叉点（crossover）／完全不隶属（fully out）**。校准"应当符合理论，或至少符合实际"。
- 操作示例：以"公司规模校准为大企业"为例，完全隶属 = 规模 >250、交叉点 = 50、完全不隶属 = <10，对应隶属度 0.95 / 0.5 / 0.05。
- 教学示例中曾用 `10, 0, -9` 作为校准阈值——仅为举例，具体锚点须由研究问题与理论/分位数决定，不可照搬。
- 锚点取法：
  - **直接法**（fsQCA 自带 calibration 函数，基于 logistic）：案例较多、数据连续、缺外部知识时适用；常见分位数锚点 `0.75；0.5；0.25`（Fiss, 2011）或 `0.95；0.5；0.05`（Rihoux & Ragin, 2009）。
  - **间接法**（自定义特征/分布函数）：案例少、对变量特征有充分外部知识、数据离散时适用。
- 软件操作：每个变量都要单独校准一遍，之后分析全部基于**校准后变量**。

### 2.2 Step2 校准后散点图检查

- 检查"校准后的模糊集 vs 原始数据"散点图，看校准结果是否符合你的预期。
- **判读要点**：若散点明显偏离单调 logistic 形状（如某区间跳跃、扁平），说明锚点设错或数据分布异常，应回 Step1 重设。

### 2.3 Step3 条件与其非集（~）散点图 —— 初步评估充分/必要一致性

- 依次检查"结果模糊集"与"各条件模糊集及其非集（~）"的散点图，可初步评估充分、必要条件的一致性。
- **判读要点**：这是探索性预检，不等于正式必要性/充分性检验，但能提前发现明显不成立的条件。

### 2.4 Step4 子集/超集分析（探索性，看必要性）

- 可做子集、超集分析，"探索可能一致的组态联系，也可以看必要性。作为一种探索，**非必要步骤**"。
- "必要条件分析（子集超集分析也可以）"。
- **判读要点**：子集关系（X⊆Y，条件为结果的子集）对应"必要条件"；超集关系对应"充分条件"思路。正式必要性仍建议在软件"Analyze → Necessary Conditions"做（见 §2.7）。

### 2.5 Step5 构建真值表（truth table）

- 当若干条件在一起的组态一致性已较高，可把它们放一起做真值表。
- K 个条件产生 `2^K` 行。三个条件即 8 行。
- 真值表行分配规则：**每个案例至多在各行中有一个隶属度 >0.5**，据此被分配到某一行（组态）。
  - 若某条件上隶属度**恰好 =0.5**，该案例不被分配到任何真值表行，因此不进入 number 统计，但**仍被纳入一致性计算**。
- 亦可在 plot 散点图中核对每行隶属度，其与真值表中一致性一致。

### 2.6 Step6 编辑真值表：frequency 与 consistency 阈值 + PRI

- 编辑真值表时设置 **frequency 阈值**与 **consistency 阈值**：
  - 先选 frequency 阈值，删掉低于阈值的行；
  - 再选 consistency 阈值，超过阈值的结果赋 1、低于赋 0；
  - **结合 PRI 考虑**。
- 也可"delete and code 一次操作完成"。
- 阈值取值参考：
  - **频数阈值（frequency cutoff）**：中小样本取 `1`，大样本应 `>1`；
  - **一致性阈值（consistency cutoff）**：充分性常用 `0.8`（Fiss, 2011 推荐，实操示例亦用 0.80427，见 §3）；
  - **PRI 阈值**：原文写作"RPI一致性阈值：0.7，结果手动改为0"——此处 "RPI" 应为 **PRI（Proportional Reduction in Inconsistency）** 的笔误；PRI 用于识别"矛盾的充分性"（同一行既充分导致 Y 又充分导致 ~Y），通常阈值取 0.7 左右。

### 2.7 必要性检验（子集/超集的正式化）

- 软件路径：基于**校准后数据**；结果变量（Outcome）**高/低都要各做一遍**；条件变量（Add Condition）**存在与非（~）都选**。
- 判读：必要条件一致性 **Consistency > 0.9**（引 Fiss 2011 / Misangyi 2014 / Bell 2014 / Gupta 2020 均采用 0.9 作为必要性阈值）。低于 0.9 一般不认为必要。
- 注意：fsQCA 对必要性只是定性陈述，定量必要程度可结合 NCA。

### 2.8 Step7 standard analyses（标准分析 / 解的计算）

- 编辑好真值表后，运行"Analyze Truth Table → Standard Analyses"。
- 需指定"Assumptions"（即各条件 present/absent 的方向假设），中间解据此生成（见 PAGE 18 示例的 Assumptions 行）。
- 输出同时给出复杂解、中间解、简约解。

### 2.9 代码实现生态参考（开源 fsQCA 实现，融合 GitHub 调研）

> 本套互补技能的执行层为 `qca-analysis-expert`（含 Python 工具链）；下列是 QCA 领域**权威开源代码实现**，供"读不懂输出/想核对算法"时溯源，亦供执行层在 R 与 Python 间选型参考（GitHub 调研，2026-08）。

- **R `QCA` 包**（Adrian Dusa，最新 v3.25，github.com/dusadrian/QCA）：fsQCA/csQCA/mvQCA 的事实标准实现。核心函数：
  - `calibrate()`（三锚点校准）、`truthTable()`（真值表与频数/一致性/PRI 阈值）、`minimize()`（布尔最小化，导出复杂/中间/简约解）、`modelFit()`（解拟合度）、`superSubset()`（必要条件/超集分析）、`fuzzyand()`/`fuzzyor()`/`fuzzyxor()`（集合运算）、`causalChain()`（集合论中介）、`XYplot()`/`Xplot()`（一致性散点图）。
  - **CCubes 算法**（Dusa 自 2018 起默认）：比传统 eQMC 更快、能处理更大真值表；`minimize()` 默认调用。
- **`QCAcluster`**（Ingo Rohlfing 等，github.com/ingorohlfing/QCAcluster）：专为**面板 / clustered / 多级**数据设计的 QCA 扩展，提供 clustered、panel、time 三类 QCA 及稳健性流程——对应本包 S6 的"动态/时序 QCA"技术底座。
- **进阶 R 包**：`SetMethods`（定量集合方法：msQCA、Coincidence Analysis 等）、`braQCA`（伯努利回归 QCA）、`qcaERT`（事件历史 QCA）、`ThSQCA`（阈值 QCA）、`TSQCA`（时序 QCA）等。
- **`fs/QCA`**（Ragin & Davey, 2014，圣塔芭芭拉版）：经典 GUI 之外 R 端参考实现；**Tosmana**（可视化 fsQCA 软件）亦常并列提及。
- **Python 生态**：`qca`（PyPI）提供基础 csQCA/fsQCA，但成熟度与社区远不及 R `QCA`；执行层可据数据规模在 R `QCA` 与 Python 间选型。

> **SkillHub 调研结论**：WorkBuddy/SkillHub 技能市场（skillhub.tencent.com，约 13000+ 技能）**暂无独立的 fsQCA/QCA 专门技能**；故本包以"R 开源生态 + 本地 8 技能包（qca-companion + S1–S7 + qca-analysis-expert）"作为代码与方法互补主体，不与任何第三方 QCA 技能重复。

### 2.10 英文 fsQCA 实证范例（操作与方法参照，IMA「研究主线」遴选）

> 下列英文顶刊论文示范 fsQCA 在真实研究中的操作化与结果呈现，可作为"读懂输出、对标写作"的范本（卷期页码已核验）。

- **Douglas, Shepherd, & Prentice (2020, *JBV*)**：以 fsQCA 给出创业的"更细粒度（finer-grained）"理解，示范如何把"创业"拆解为多重并发条件组态，并以中间解呈现核心/边缘条件（对应 §3.1、§3.2 的解判读）。
- **Gabrielsson, Galan, & Politis (2025, *JBR*)**：以组态研究"创业教育项目中的创业激情学习路径"，示范中样本（跨案例）组态比较的操作化（对应 §2.5 真值表、§2.6 阈值）。
- **Sheng, Fu, Jeyaraj, & Sun (2025, *JBR*)**：将 PLS-SEM 与 fsQCA **混合**——先用偏最小二乘结构方程看变量间线性净效应，再用 fsQCA 看多重并发因果组态，是"线性相关 + 组态视角"互补写法的英文范例（对应 S7 §3.4 混合方法）。
- **Anglin, Reid, & Short (2023, *ETP*)**：以叙事理论为框架，把众筹融资吁请中的核心故事元素（人物/情节/场景）操作化为条件组态，示范"非结构性文本特征"的校准与组态分析（对应 §2.5 校准、§3 判读）。
- **Mitzinneck, Coenen, Noseleit, & Rupietta (2024, *JBV*)**：社区企业（CBE）影响创造的 enabling conditions 组态；原文报告一致性阈值 0.85/0.90、PRI 0.65，示范"社会影响"结果的 fsQCA 操作化（阈值处理见 §2.6）。
- **Ong & Johnson (2023, *AMJ*)**：以三研究 fsQCA 检验需求-资源组态对衰竭/投入的充分性，示范"多研究重复验证组态"与"多结果（exhaustion/engagement 等）并列报告"的操作化（对应 §3 判读、§4 报告规范）。
- **Parmigiani, Irwin, & Lahneman (2022, *SMJ*)**：绿色房车情境下"双重目的"技术×关系能力对**组件创新 vs. 整机创新**两个层级的组态影响，示范"同一研究多层级结果并行检验"的操作化（QCA）。

## 3. 结果判读

### 3.1 三种解的类型（复杂 / 中间 / 简约）

| 解的类型 | 纳入的组态来源 | 特点 | 出处 |
|---|---|---|---|
| 复杂解（complex） | 仅实际观察案例的组态 | 不引入任何逻辑余项，最保守 | |
| 中间解（intermediate） | 实际观察案例 + "容易的"逻辑余项（研究者反事实假设） | 最常用、最易解释 | |
| 简约解（parsimonious） | 实际观察案例 + 所有"容易/困难"逻辑余项 | 最精简，但可能过度简化 | |

**核心条件 vs 边缘条件（判读关键）**：
- 同时出现在**中间解与简约解**中的条件 → **核心条件**（与结果有很强因果关系）；
- 只在中间解出现、不在简约解 → **边缘条件**（因果关系较弱）；
- 关系：**中间解比简约解更复杂；中间解包含简约解（核心条件），外加边缘条件**；
- ⚠️ 重要提醒：**边缘条件不是不重要的条件**。

结果表符号约定：
- 核心条件存在 = 大黑实心圈；核心条件缺失 = 大白空心圈；
- 边缘条件存在 = 小黑实心圈；边缘条件缺失 = 小白空心圈。

### 3.2 真实输出示例

```
--- INTERMEDIATE SOLUTION ---
frequency cutoff: 1
consistency cutoff: 0.80427
Assumptions: indusfz(present) stablfz(present) develfz(present) urbanfz(present) literfz(present)
                     raw coverage  unique coverage  consistency
~indusfz*stablfz*develfz*literfz   0.28169        0.191315       0.813559
 stablfz*develfz*urbanfz*literfz   0.46831        0.377934       0.900677
solution coverage: 0.659624
solution consistency: 0.865948
```

- **raw coverage（原始覆盖度）**：该组态能解释的结果案例总体份额（含与其他组态重叠部分）。
- **unique coverage（唯一覆盖度）**：该组态**独有**解释（不与其他组态重叠）的结果份额。例中第一组态 raw 0.28169 但 unique 仅 0.191315，说明它与第二组态有重叠解释。
- **consistency（组态一致性）**：单个组态作为充分条件的可靠度，本例 0.813559 / 0.900677，均 >0.8。
- **solution coverage（解覆盖度）**：所有组态合并能解释的结果比例 = 0.659624（即约 66% 的结果案例被覆盖）。
- **solution consistency（解一致性）**：整体解作为充分条件的一致度 = **0.865948**（>0.8，可接受）。

### 3.3 案例归属规则（0.5 与 0.001 转换）

- **0.5 归属规则**：案例被归属到"其隶属度 >0.5 的那一行/那个组态"。输出中 "Cases with greater than 0.5 membership in term …" 即按此列出，例如：
  - `~indusfz*stablfz*develfz*literfz`：Ireland (0.72, 0.92)、Finland (0.58, 0.77)
  - `stablfz*develfz*urbanfz*literfz`：Nether (0.98, 0.95)、UK (0.98, 0.95)、Belgium (0.89, 0.95)、Czech (0.58, 0.89)
  - 括号内两值一般理解为（案例在该组态中的隶属度，案例在结果中的隶属度）。
- **0.001 转换（处理 0/1 隶属度的逻辑矛盾）**：
  - Fiss et al. (2011)：完全隶属案例 `+0.001`（即 1→1.001 思路，实际是将 1 略微调以避免集合逻辑中的矛盾赋分）；
  - Crilly et al. (2012)：完全不隶属 `-0.001`（即 0→-0.001）。
  - 目的：避免 fsQCA 在真值表编码时因严格 0/1 导致的一致性悖论。**《软件常识》**：这是处理清晰边界案例的常规技巧，仅在存在完全 0 或 1 隶属度且出现一致性异常时考虑。⚠️ 具体加减方向（±0.001）与是否启用，取决于所用文献约定，文本仅列两种相反做法，实操需据你引用的文献统一。

## 4. 常见误区与避坑（清单）

1. **锚点照搬**：不要把示例阈值（10/0/-9 或 250/50/10）直接套用；锚点须由理论或分位数（如 0.75/0.5/0.25）确定。
2. **跳过散点图检查**：校准后不核对散点图，可能带着错误校准跑完整个分析。
3. **把 Step4 子集/超集当正式必要性**：它只是探索、非必要步骤；正式必要性要在软件做且阈值 >0.9。
4. **阈值取错**：充分性一致性常用 0.8，必要性才用 0.9；频数阈值中小样本 1、大样本 >1。
5. **忽视 PRI**：仅看一致性会漏掉"矛盾充分性"（同一行同时充分导致 Y 与 ~Y）；应结合 PRI（约 0.7）筛选。
6. **误读边缘条件**：边缘条件不是不重要，只是未在简约解出现。
7. **0.5 边界漏算**：隶属度恰为 0.5 的案例不被分配行、不进 number 统计但仍进一致性，汇报案例数时要留意。
8. **数据格式问题**：变量名用英/拼音、避免空格，否则软件可能闪退。
9. **结果高低都要分析**：QCA 具因果非对称性，高/非高结果需分别分析。
10. **混淆 RPI 与 PRI**：原文中"RPI"应为 PRI 笔误，勿按字面另设指标。

## 5. 与 qca-analysis-expert 的互补边界

- **本技能（qca-fsqca-practice）**：只读、只解释、只避雷。产出的是"人读操作指引 + 结果判读 + 常见错误"，不实现任何校准/真值表/解的计算代码。
- **`qca-analysis-expert`（技术执行层）**：负责实际计算——调用 Python 工具链完成校准、真值表构建、一致性/PRI 计算、复杂/中间/简约解求解、coverage 与案例归属。
- **分工原则**：凡"跑数据、出数字"交给专家技能；凡"这个数字什么意思、阈值合不合理、我哪里读错了"回到本技能。二者互补，不重叠实现。
- ⚠️ 本技能所有阈值与输出示例均来自上述两份文本；文本未直接给出但属 QCA 软件通用做法者已标注"《软件常识》"，不确定处标注"⚠️待核实"，**严禁把本技能中的示例数字当作通用标准值**。

## 6. 关键引用（APA）

- Fiss, P. C. (2011). Building better causal theories: A fuzzy set approach to typologies in organization research. *Academy of Management Journal, 54*(2), 393–420.
- Ragin, C. C. (2008). *Redesigning social inquiry: Fuzzy sets and beyond*. University of Chicago Press.
- Rihoux, B., & Ragin, C. C. (2009). *Configurational comparative methods: Qualitative Comparative Analysis (QCA) and related techniques*. Sage.
- Schneider, C., & Wagemann, C. (2012). Truth tables. In *Set-Theoretic Methods for the Social Sciences: A Guide to Qualitative Comparative Analysis* (pp. 23–41). Cambridge University Press.
- Fiss, P. C. (2011). Building better causal theories: A fuzzy set approach to typologies in organization research. *Academy of Management Journal*, 54(2), 393–420.
- Crilly, D., Zollo, M., Hansen, M. T., & Zelman, M. C. (2012). Faking it or muddling through? Understanding decoupling in response to stakeholder pressures. *Academy of Management Journal*, 55(6), 1429–1448.
- Du, Y., Kim, P. (2021). One Size Does Not Fit All: Strategy Configurations, Complex Environments, and New Venture Performance in Emerging Economies. *Journal of Business Research, 124*, 272–285.
- Dusa, A. (2026). *QCA: A Package for Qualitative Comparative Analysis*. R package version 3.25. https://github.com/dusadrian/QCA
- Rohlfing, I., Bekmuratovna, A., & Schwalbach, J. (2026). *QCAcluster: Tools for the Analysis of Clustered Data in QCA* (Version 0.2.0) [R package]. https://github.com/ingorohlfing/QCAcluster
- Ragin, C. C., & Davey, S. (2014). *fs/QCA: Fuzzy-Set/Qualitative Comparative Analysis*. University of California, Irvine.
- Douglas, E. J., Shepherd, D. A., & Prentice, C. (2020). Using fuzzy-set QCA for a finer-grained understanding of entrepreneurship. *Journal of Business Venturing*, 35(1), Article 105970. https://doi.org/10.1016/j.jbusvent.2019.105970
- Gabrielsson, J., Galan, N., & Politis, D. (2025). Learning pathways to entrepreneurial passion in venture creation programs: A configurational study. *Journal of Business Research*, 186, Article 114944. https://doi.org/10.1016/j.jbusres.2024.114944
- Sheng, Z., Fu, J., Jeyaraj, A., & Sun, Y. (2025). Altruistic and egoistic behaviors on enterprise social network platforms: Analysis using PLS-SEM and fsQCA. *Journal of Business Research*, 186, Article 114939. https://doi.org/10.1016/j.jbusres.2024.114939
- Anglin, A. H., Reid, S. W., & Short, J. C. (2023). More than one way to tell a story: A configurational approach to storytelling in crowdfunding. *Entrepreneurship Theory and Practice*, 47(2), 461–494. https://doi.org/10.1177/10422587221082679
- Mitzinneck, B. C., Coenen, J., Noseleit, F., & Rupietta, C. (2024). Impact creation approaches of community-based enterprises: A configurational analysis of enabling conditions. *Journal of Business Venturing*, 39(6), Article 106420. https://doi.org/10.1016/j.jbusvent.2024.106420
- Ong, W. J., & Johnson, M. D. (2023). Toward a configural theory of job demands and resources. *Academy of Management Journal*, 66(1), 195–221. https://doi.org/10.5465/amj.2020.0493
