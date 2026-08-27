---
name: qca-advanced-frontiers
description: QCA前沿议题互补参考（动态/时序QCA、战略组态、复杂环境、增长模式、集合论中介）。执行 fsQCA 分析时须同步加载 qca-companion 做互补校对。
license: MIT
metadata:
  version: "1.1.0"
  type: qca-complementary-reference
  companion: qca-companion
  sources:
    - 杜运周, 刘秋辰, 程建青 (2020). 什么样的营商环境生态产生城市高创业活跃度？——基于制度组态的分析
    - Du & Kim (2021). One size does not fit all (JBR)
    - Du et al. (2025). Riding the waves of change
    - TECH103015 (技术文献) = Du et al. (2024). Set-theoretic mediation models (Technovation)
    - 本轮补充：宋琪 (2023)、张吉昌 (2024)、曾凡军 (2024)、赵华平 (2026)、王红帅、潘燕萍 (2024)、王炳成 (2025)、崔祥民 (2025)、Zhang & Ramesh (2024)、Palmer et al. (2019)（见 §2.4、§3.4、§8）
---

# QCA 前沿议题（互补参考指引）

> **互补定位**：本技能是 QCA 方法论「前沿议题」互补参考指引，与 `qca-analysis-expert`（技术执行层）形成"指引/校对 vs 执行"分工。凡调用 fsQCA 相关技能做分析，须同步加载 `qca-companion` 做互补校对。
> **来源材料**：
> - 杜运周, 刘秋辰, 程建青 (2020). 什么样的营商环境生态产生城市高创业活跃度？——基于制度组态的分析（《管理世界》）
> - Du & Kim (2021). One size does not fit all: Strategy configurations, complex environments (JBR)
> - Du et al. (2025). Riding the waves of change: Growth Pattern QCA (ETP)
> - TECH103015 = Du et al. (2024). Set-theoretic mediation models (Technovation, DOI 10.1016/j.technovation.2024.103015)

> **关于 TECH103015 的判读**：经通读其摘要、引言、理论框架与结论（PAGE 1–14），该文主题为**集合论中介模型（set-theoretic mediation models）**——在 fsQCA 框架内用"必要性/充分性"集合关系分析多阶段因果链（X→M→Y）的复杂因果过程。它**不属于**面板 QCA、时间校准或稳健性技术，而归入本指引 §5「复杂因果过程 / 中介机制分析」前沿子题。

## 1. 何时使用本技能

当研究问题触及以下任一前沿议题时，先读本指引再交由 `qca-analysis-expert` 执行：

- **动态/时序问题**：需把"增长率、轨迹、波动"等时间维度纳入 QCA（见 §2、§4）。
- **战略组态与复杂环境**：研究"one size does not fit all"、多重等效路径、非对称因果（见 §3）。
- **增长模式演化**：追踪创业/企业成长的复杂增长形态（见 §4）。
- **中介机制**：用 QCA 回答"X 通过什么机制影响 Y"（见 §5）。
- **混合方法需求**：NCA+QCA、QCA+统计建模（见 §3、§4、§5）。
- 需要**稳健性、校准、必要/充分条件判定**等执行细节时，转 `qca-analysis-expert` 与 `qca-companion`。

## 2. 动态/时序 QCA（技术路线图与既有方法）

> 主要来源：Du et al. (2025)。该文指出，已发表的创业 QCA 研究中"几乎没有整合时间维度"（Du et al., 2025, p.2），并系统梳理了时间相关 QCA 技术。

### 2.1 七个时间相关概念（须先区分，避免误用技术）
| 概念 | 定义要点 | 出处 |
|---|---|---|
| Sequence（序列/次序） | 现象/事件的时间排序，不涉及具体时点 | (Du et al., 2025, p.3–4, Table 1) |
| Direction（方向） | 随时间"增加/减少" | 同上 |
| Magnitude（幅度） | 变化绝对量值 | 同上 |
| Duration（持续时间） | 现象的时长 | 同上 |
| Rate（速率） | 单位时长内的平均变化 | 同上 |
| Trajectory（轨迹） | 方向+速率+增长形状（slope/growth） | (Du et al., 2025, p.5–6) |
| Turbulence（湍流/波动） | 变化率的方差，常以斜率系数标准误度量 | (Du et al., 2025, p.5–6) |

### 2.2 既有时间相关 QCA 技术（Du et al., 2025, p.4–7, Table 2）
- **序列类**：TQCA（Caren & Panofsky, 2005; Ragin & Strand, 2008）、TNCA（Hak et al., 2013）、TJQCA（Pagliarin & Gerrits, 2020）。
- **方向/幅度/持续时间类**：Time Differencing QCA（Hino, 2009；Ragin, 2014）——取首尾两点校准差分值，适合断续变化、缺乏中间数据场景（Du et al., 2025, p.5）。
- **仅持续时间类**：对不同时间段做多次 QCA（Vis et al., 2013）、面板数据集合论研究（Garcia-Castro & Ariño, 2016）。
- **关键判断**：**没有任何单一既有技术同时覆盖 trajectory + turbulence 两类概念**（Du et al., 2025, p.6–7）→ 催生了 §4 的 Growth Pattern QCA。

### 2.3 两种方法学路径（Du et al., 2025, p.7–8）
- **Bottom-up（条件性时间组态）**：先测单一时间条件→校准→再组合。"弱整体论"（weak holism），条件近独立、可调整。本文技术采用此路径。
- **Top-down（整体性时间组态）**：以完整组态为分析单位，追踪其随时间的整体状态变化。"强整体论"（strong holism），适用于"组态整体不可分割"的理论。

### 2.4 动态/时序 QCA 实证先例（中文管理学，本轮补充）
| 文献 | 设计 | 样本 / 时段 | 要点 |
|---|---|---|---|
| 宋琪、陈晓红 (2023) | 多时段动态 fsQCA | 438 家数字经济上市公司；2015–2017 与 2018–2020 两时间窗 | 结构/关系/空间三维嵌入；组态随时间的演化与替代效应 |
| 赵华平 等 (2024) | 多时段 QCA | A 股制造业；2019 与 2021（公共卫生冲击前后） | 创新韧性组态的动态轨迹；校准 90/50/10 分位数 |
| 张吉昌 等 (2024) | 省域面板动态 QCA | 31 省份 2000–2021 | 制度逻辑 5 条件；时间+空间双维度；用组间/组内一致性调整距离捕捉时序变化；2020 疫情致一致性集体下跌 |
| 曾凡军、陈永洲 (2024) | 面板数据动态 QCA | 31 省级政府 2015–2021 | 数字治理生态四类；时空稳定但 2019 断崖下跌 |
| 王红帅 | DID + 多时段 QCA / TSQCA | 2006–2015 两期规划 | "混合效应法 QCA"（个体+时间标签）转截面；校准 95/5 分位数+置信区间法 |
| Yang, Lander, Turturea, & Heugens (2024) | 时间括段 QCA（temporally bracketed QCA） | 1867 起收购宣告；金融危机前/中/后三时窗 | 以 fsQCA 分时段（危机前/中/后）比较投资者"并购配方"的演化；发现危机期投资者更具探索性，并以"补偿逻辑"而非单纯叠加 safeguards 评估交易（英文顶刊动态 QCA 范例） |

## 3. 战略组态与复杂环境（Du & Kim 2021）

> 核心命题：**"One size does not fit all"**——不存在单一普适战略；高绩效由战略与环境的**组态**以多重等效路径实现（Du & Kim, 2021, p.1）。

### 3.1 对"对称权变"方法的批判
- 传统回归依赖对称思维，至多分析三变量交互，低估真实因果复杂性（Du & Kim, 2021, p.2–3）。
- "necessary but not sufficient"（必要非充分）的瓶颈约束无法用回归识别，需**非对称组态方法**同时考察多条件的必要性/充分性（Du & Kim, 2021, p.3）。

### 3.2 三类成长战略 × 三类复杂环境
- **战略**：创业导向 EO（探索）、市场导向 MO（利用）、政治网络 PN（非市场战略）（Du & Kim, 2021, p.3–4）。
- **复杂环境**（新兴经济体的 scope+scale 复杂性）：环境敌意 EH、机能失调竞争 DC、制度支持缺失 LIS（Du & Kim, 2021, p.4）。
- 组态框架要求用**溯因逻辑**的非对称方法容纳多重路径（equifinality）（Du & Kim, 2021, p.4–5）。

### 3.3 方法与关键发现
- **fsQCA 程序**：识别单一必要条件→探索多重充分组态（equifinality）→检验高/非高绩效的因果非对称（Du & Kim, 2021, p.5）。
- **校准三技术**：①理论/量表锚点；②样本最小-中-最大；③百分位断点（仅当缺乏实质知识时用）。本文用前两种（Du & Kim, 2021, p.5–6）。
- **结果**：发现 **6 个二阶 equifinal 组态**（S1: MO 主导；S2a/S2b: EO-MO 双元；S2c: EO-MO-PN 三元；S3: EO-PN；S4: MO-PN），总体解一致性 0.89、覆盖度 0.75（Du & Kim, 2021, p.8, Table 3）。
- **NCA 发现**：**没有单一战略（EO/MO/PN）是高绩效的必要条件**；EO∪MO 的并集才是必要条件（Du & Kim, 2021, p.8, Table 4、Table 5-D）。
- **理论贡献**：以非对称组态调和了以往回归研究中 EO-MO 绩效关系的矛盾结论；政府"帮助之手"与"掠夺之手"具有非对称属性（Du & Kim, 2021, p.9–10）。

### 3.4 NCA + fsQCA 混合：必要条件的效应量边界
> 来源（本轮补充）：潘燕萍 等 (2024)、王炳成 等 (2025)、崔祥民、王淑雯 (2025)。
- **互补逻辑**：NCA 回答"某条件是否必要、效应量 d 多大"（Dul, 2016），fsQCA 回答"哪些条件组态充分"；二者并列可区分"必要非充分"与"组态充分"，避免把 INUS 条件误当必要条件（亦见 S7 §2.3）。
- **操作要点**：NCA 常用 CE（效应量）与 CR（瓶颈水平）两种估计，效应量 **d > 0.1 且显著**方认必要条件（王炳成 等, 2025）；fsQCA 必要性一致性仍须 **> 0.9**（见 S1 §2.6）。两法结论应相互印证（潘燕萍 等, 2024 即报告 NCA 与 fsQCA 必要性结论一致）。
- **稳健性**：NCA 可用 CE/CR 双法互为增强（崔祥民、王淑雯, 2025 用置换检验重抽样 10000 次）。

## 4. 增长模式与组态演化（Du et al. 2025 — Growth Pattern QCA）

> 针对 §2 遗留空白，本文提出 **Growth Pattern QCA**：把 trajectory（方向、速率、形状）与 turbulence（波动）转化为模糊集条件，纳入 fsQCA 分析复杂增长模式（Du et al., 2025, p.1, p.5–6）。

### 4.1 复杂增长模式的定义
- **复杂增长模式 = 各条件的 trajectory 与 turbulence 的组态**（Du et al., 2025, p.5）。
- **Trajectory**：指定时长内变化率与增长形状（线性/指数/对数/逻辑/多项式）（Du et al., 2025, p.5–6, Fig.1）。
- **Turbulence**：变化率方差，常取斜率系数标准误（Du et al., 2025, p.5–6）。

### 4.2 LG（线性增长）技术流程（默认起点）
1. 用 **Empirical Bayes Estimates（EBE）随机系数模型**估计每个案例的增长斜率（处理自相关、不等距数据）（Du et al., 2025, p.9–10）。
2. 可选 **GMM（成长混合模型）** 作替代（需大样本）（Du et al., 2025, p.15）。
3. 校准：高增长率以样本 75 分位为 fully-in、0 为 fully-out、中点为 crossover；turbulence 类似（Du et al., 2025, p.12, Table 4）。
4. 标准 fsQCA 分析（一致性 0.8、PRI 0.7、频数 1）（Du et al., 2025, p.12–13）。
5. **稳健性**：采用 Oana & Schneider (2024) 的 QCA Robustness Test Protocol（RTP），报告敏感性区间与拟合稳健性 RF（Du et al., 2025, p.14）。

### 4.3 演示与拓展
- 数据：GEM + WEF  Global IT Report，28 经济体 2011–2016 平衡面板，MOA 模型 + 社交媒体使用（Du et al., 2025, p.10–11）。
- 非线性模式可用指数/对数/逻辑/多项式函数替代 LG，但会引入额外形状参数、挤占案例数（limited diversity 风险）（Du et al., 2025, p.15–16）。
- 也可将"增长形状"作为分类条件单独校准（适合小样本/稳健性检验）（Du et al., 2025, p.16–17）。
- **技术选择标准**（Du et al., 2025, p.17, Table 6）：依理论预期→探索数据→数据覆盖度→变异性处理（turbulence）四步决策。
- **延伸范例 · 组态动量与幂律增长（Peng & Jing, 2025, *AMP*）**：以中国房地产行业二十年单案例嵌入式研究提出"组态动量（configurational momentum）"视角，解释 Exceptional 增长的幂律分布——与 Growth Pattern QCA（关注增长轨迹的组态前因）互补，示范"组态×增长×分布形态"的前沿议题（另有 §4.5 C2PA 处理条件组合的时序演化）。

### 4.4 与本土静态 QCA 的衔接
- 杜运周 等 (2020) 明确指出"QCA 方法对于动态时间变化的应用有待完善，未来可收集跨时间数据，对时序 QCA 方法进行合理发展"（杜运周 等, 2020, p.12）——本文 §2/§4 即对该呼吁的方法论回应。

### 4.5 纵向组态新技术：C2PA（Rupietta & Meuer, 2025, *ORM*）

> **Comparative Configurational Process Analysis（C2PA，比较性组态过程分析）**：把 QCA 与**序列分析（sequence analysis）**融合的纵向案例分析新集合论技术（卷期页码经 Crossref 核验：*Organizational Research Methods*, 28(3), 405–432）。

- **核心概念"组态主题（configurational themes）"**：识别"可辨认的、反复出现的条件组合之时间模式"——把每个案例的纵向条件序列转为集合隶属，再对主题做组态比较。
- **与 Growth Pattern QCA 的分工**（Du et al., 2025）：Growth Pattern QCA 建模"结果变量的增长轨迹"，C2PA 建模"解释条件组合的时序演化"，二者互补，覆盖 §2 时间概念表中 Sequence/Trajectory 的不同侧面。
- **适用情境**：条件随时间变化的组态现象（组织变革、战略转换、制度演进），弥补传统 QCA 缺乏时间维度的短板（呼应 Du et al., 2025, p.2）。
- **操作要点**：原文示例以 **PRI 一致性截断 0.65**；序列数据先编码为条件状态再校准；与 TSQCA / 多时段 QCA 的取舍见 §2.2、§2.4。


## 5. TECH103015 专题：集合论中介模型（Du et al. 2024）

> **它讲什么**：在 fsQCA 中用集合论"必要性/充分性"关系建模多阶段因果链（X→M→Y），以分析技术创新与创业中的**复杂因果过程**（而非传统线性中介）。属"复杂因果过程/中介机制分析"前沿，与面板、时间校准、稳健性技术并列但不同类。

### 5.1 动机：线性中介的局限
- 传统 Baron-Kenny 式线性中介依赖还原论，至多处理三变量交互，无法刻画组态、等效性、非对称（Du et al., 2024, p.2–3）。
- 集合论以必要性（X⊇Y，超集）与充分性（X⊆Y，子集）定义因果（Du et al., 2024, p.2–3）。

### 5.2 三种因果链的六种基本模式（Du et al., 2024, p.3–4, Fig.3–4）
- 必要性链：Necessary-Necessary、Necessary-Sufficient、Sufficient-Necessary。
- 充分性链：Sufficient-Sufficient、Sufficient-Necessary、Necessary-Sufficient。
- 逻辑：X→M 与 M→Y 同质则 X→Y 同构；异质则需逐一判定（Du et al., 2024, p.4）。

### 5.3 分析流程（Du et al., 2024, p.4–6, 3.2）
1. 依序定义 X→Y、X→M、M→Y 的集合关系（演绎或溯因）。
2. 标准 QCA 校准（R 中 `calibrate(type="fuzzy")`）。
3. 一致性公式：必要性 Cons(X≥Y)=Σmin(X,Y)/ΣY（阈值 ≥0.9）；充分性 Cons(X≤Y)=Σmin(X,Y)/ΣX（阈值 ≥0.8）（Du et al., 2024, p.5–6）。
4. fs/QCA 中 `Necessary Conditions` 与 `Truth Table Algorithm`，R 中 `pof()`、`superSubset()`（Du et al., 2024, p.6）。

### 5.4 三类扩展（Du et al., 2024, p.6–7, 3.3）
- **合取/析取组合**：conjunction `fuzzyand()`（取 min）、disjunction `fuzzyor()`（取 max）（Du et al., 2024, p.7）。
- **等效性（equifinality）**：X-M 或 M-Y 阶段均可有多条等效中介路径（Du et al., 2024, p.7）。
- **非对称性（asymmetry）**：高 X 致高 Y，不等于低 X 致低 Y；应分别研究结果与缺席的不同成因（Du et al., 2024, p.7）。

### 5.5 构建步骤与演示（Du et al., 2024, p.7–11, 4–5）
- 理论建构流程图 Fig.8：TH（理论假设）→ SM（样本测量）→ R（结果）→ C（结论），核心在 TH 阶段回答 5 个问题（X 组成？X 对 Y 必要/充分？M 组成？X 对 M？M 对 Y？）（Du et al., 2024, p.9–10）。
- 演示：2019 GEM 50 经济体，制度环境（~GP*EF*SC）充分催生创业认知脚本析取（IC+~FF+EE），后者为 IE 必要条件，验证 Sufficient-Necessary 中介（Du et al., 2024, p.10–11, Table 3）。
- 探索性步骤：先做必要性一致性、再做充分性；若两条中介路径均未超阈值则可停止（Du et al., 2024, p.11, 5.3）。

### 5.6 意义与边界
- 可与线性方法"混合"（X→M 用集合关系、M→Y 用线性关系）（Du et al., 2024, p.12–13, Table 6）。
- 局限：条件数指数级增长致复杂度上升；校准仍须谨慎依理论定阈值（Du et al., 2024, p.13–14）。

## 6. 常见误区与避坑

- **误把"相关/对称"当"组态/非对称"**：回归的净效应 ≠ QCA 的必要性/充分性；跨方法结论不可直接移植（杜运周 等, 2020, p.2；Du & Kim, 2021, p.9）。
- **忽略校准依据**：应优先用理论/量表锚点，百分位断点仅在缺乏实质知识时退用（Du & Kim, 2021, p.5–6）。
- **时间序列误用**：先区分 7 个时间概念，再选技术；勿用 Time Differencing 处理需中间数据的连续增长（Du et al., 2025, p.4–7）。
- **非线性函数滥用**：多项式/指数会引入额外形状参数、加重 limited diversity，须权衡（Du et al., 2025, p.15–16）。
- **中介模型≠回归中介**：集合论中介用必要/充分一致性判定，不区分直接/间接效应（Du et al., 2024, p.4 注4）。
- **稳健性不可省**：增长模式研究须用 RTP 报告敏感区间（Du et al., 2025, p.14）。

## 7. 与 qca-analysis-expert 的互补边界

| 维度 | 本技能（qca-advanced-frontiers） | qca-analysis-expert（执行层） |
|---|---|---|
| 定位 | 前沿议题"指引/校对" | 技术"执行" |
| 内容 | 何时用何种时间/组态/中介方法、概念辨析、误区 | 校准、必要性/充分性运算、真值表、解的类型、软件操作 |
| 触发 | 选题与设计阶段、方法学路线选择 | 具体跑 fsQCA、出组态解、稳健性检验 |
| 协同 | 提供理论框架与边界；校对方法适配性 | 落地分析；遇前沿议题须回查本技能 |

> 任何 fsQCA 执行须同步加载 `qca-companion` 做互补校对（见 frontmatter）。

## 8. 关键引用（APA）

- 杜运周, 刘秋辰, 程建青. (2020). 什么样的营商环境生态产生城市高创业活跃度？——基于制度组态的分析. *管理世界*, 36(9), 141–154.
- Du, Y., & Kim, P. H. (2021). One size does not fit all: Strategy configurations, complex environments, and new venture performance in emerging economies. *Journal of Business Research*, 124, 272–285.
- Du, Y., Liu, Q., Kim, P. H., & Li, J. (2025). Riding the waves of change: Using qualitative comparative analysis to analyze complex growth patterns in entrepreneurship. *Entrepreneurship Theory and Practice*, 49(1), 312–353. https://doi.org/10.1177/10422587241249330
- Du, Y., Liu, Q., Kim, P. H., & Meuer, J. (2024). Studying complex causal processes in technological innovation and entrepreneurship with set-theoretic mediation models. *Technovation*, 134, 103015.
- Ragin, C. C. (2008). *Redesigning Social Inquiry: Fuzzy Sets and beyond*. University of Chicago Press.
- Fiss, P. C. (2011). Building better causal theories: A fuzzy set approach to typologies in organization research. *Academy of Management Journal*, 54(2), 393–420.
- Dul, J. (2016). Necessary Condition Analysis (NCA): Logic and methodology of "necessary but not sufficient" causality. *Organizational Research Methods*, 19(1), 10–52.
- 程恋军, 王琳茜. (2025). 定性比较分析（QCA）中的稳健性研究：分析策略与未来方向. *中国人力资源开发*, 42(1), 19–31.
- 宋琪, 陈晓红. (2023). 多维网络嵌入如何激发企业数字创新？——基于多时段动态fsQCA的组态研究. *科技管理研究*, 43(15).
- 张吉昌, 龙静, 王泽民. (2024). 什么样的制度环境有利于产生高创业活跃度——基于省域面板数据的动态QCA分析. *科技进步与对策*, 41(24), 36–48.
- 曾凡军, 陈永洲. (2024). 什么样的数字治理生态能提高数字政府发展水平？——基于生态视角的动态QCA分析. *电子政务*, (4), 27–41.
- 赵华平, 陈龙, 薛希萌. (2026). 动态组态视角下企业创新韧性的驱动路径研究. *科研管理*, 47(2), 137–144.
- 潘燕萍, 巫洁雯, 黄文萍. (2024). "差序格局"视域下提高企业家精神的组态路径研究：基于NCA与fsQCA的混合分析. *中国人力资源开发*, 41(8), 67–84.
- 王炳成, 孙玉馨, 赵静怡. (2025). 数字化转型背景下商业模式跨界融合的形成路径与机理——基于扎根理论与fsQCA的混合式研究. *管理评论*, 37(5), 277–288.
- 崔祥民, 王淑雯. (2025). 数字平台如何通过联动效应实现高质量创业——基于NCA与fsQCA的混合研究. *科技进步与对策*, 42(20), 53–63.
- 傅慧, 郭希婕, 肖雄辉. (2024). 合法性组合如何促进独角兽企业的延展成长：基于模糊集的定性比较分析. *中国软科学*, (9), 132–141.
- Zhang, R. S., & Ramesh, B. (2024). A configurational perspective on design elements and user governance engagement in blockchain platforms. *Information Systems Journal*, 34(4), 1264–1323. https://doi.org/10.1111/isj.12494
- Rupietta, C., & Meuer, J. (2025). Comparative configurational process analysis: A new set-theoretic technique for longitudinal case analysis. *Organizational Research Methods*, 28(3), 405–432. https://doi.org/10.1177/10944281241259075
- Peng, Y., & Jing, R. (2025). A configurational momentum perspective on exceptional growth and power-law distributions. *Academy of Management Perspectives*. Advance online publication. https://doi.org/10.5465/amp.2023.0494
- Palmer, C., Niemand, T., Stöckmann, C., Kraus, S., & Kailer, N. (2019). The interplay of entrepreneurial orientation and psychological traits in explaining firm performance. *Journal of Business Research*, 102, 173–184.
- Yang, J., Lander, M. W., Turturea, R., & Heugens, P. (2024). How systemic crises uproot and re-establish investors' acquisition "recipes": A temporally bracketed qualitative comparative analysis. *Journal of Management Studies*, 61(7), 3081–3107. https://doi.org/10.1111/joms.13029

---
*准确性说明*：TECH103015 经判读归类为"集合论中介模型"（复杂因果过程/中介分析前沿），非面板/时间/稳健性技术。所有流程与页码均取自四份源文本 `===== PAGE X =====` 标记；少数跨页连续论述以起始页标注。⚠️ 杜运周 等 (2020) 期刊正文页码与提取 PDF 页标记不同，本文一律采用提取文本 `PAGE X` 标记。
