---
name: qca-research-design
description: QCA研究设计与科研写作实践互补参考指引（应用现状、变量操作化、案例选择、样本量、写作实践）。执行 fsQCA 分析时须同步加载 qca-companion 做互补校对。
license: MIT
metadata:
  version: "1.1.0"
  type: qca-complementary-reference
  companion: qca-companion
  sources:
    - 本轮补充：王栋 等 (2023)、王群 等 (2023)、傅慧 等 (2024)、张启迪 (2024)、潘燕萍 等 (2024) 等本地 QCA 实证文献（见 §2.1、§2.2、§6）
    - 本轮补充：马鸿佳 等 (2024, 南开管理评论, N=392)、马鸿佳 (2024, 管理世界, N=495) 资源编排/平台化转型 fsQCA 与混合方法实证（见 §2.1、§2.2、§6）
---

# QCA 研究设计与科研写作实践（互补参考指引）

> **互补定位**：本技能是 QCA 方法论的「互补参考指引」，与 `qca-analysis-expert`（技术执行层）形成"指引/校对 vs 执行"分工。凡调用 fsQCA 相关技能做分析，须同步加载 `qca-companion` 做互补校对。
> **来源材料**：QCA 在管理学研究中的应用现状与科研写作实践（综合公开论文、文献计量与领域共识蒸馏，未披露任何未公开课件）。

## 1. 何时使用本技能

在以下场景加载本技能（区别于 `qca-analysis-expert` 的技术执行）：

- 规划一项 QCA 研究：选题、条件选择、案例范围界定、变量操作化与校准阈值设定。
- 撰写 QCA 论文的方法与结果部分，需规范写作范式（布尔表示法、解的类型、集合论度量）。
- 需要判断样本量是否充足、频率/一致性阈值如何设定（经验法则）。
- 需要识别常见误区（机械校准、逻辑余项误用、理论过载、忽略不对称性）。
- 需回顾 QCA 在管理学各领域应用现状与演进脉络（文献综述/引言写作）。

> 凡实际运行 fsQCA 算法、生成真值表与解集，应交由 `qca-analysis-expert` 执行，并同步 `qca-companion` 校对。

## 2. 核心知识

### 2.1 应用现状与演进脉络

| 维度 | 要点 | 出处 |
|---|---|---|
| 方法定位 | 组态视角与 QCA 从**等效性、并发性、非对称性**解释导致结果的前因条件组合，兼具集合分析与案例研究优势（Ragin, 1987） |  |
| 跨学科应用 | 社会学、政治学、管理学、经济学等 |  |
| 管理学子领域 | 创业管理、创新管理、战略管理、信息系统管理（含 TOE 框架、复杂系统） |  |
| 新兴应用领域 | **医疗与健康政策 QCA** 快速兴起：三级公立医院高质量发展（王栋 等, 2023, N=64, TOE 7 条件）、惠民保参保率（王群 等, 2023, N=50, 政府支持为必要条件）、患者在线问诊选择（杜刚、韩召, 2024）、独角兽企业延展成长（傅慧 等, 2024, N=294, 合法性组合） | （本轮补充文献） |
| 资源编排 / 数字平台 QCA | 中小制造企业数字机会利用（马鸿佳 等, 2024, N=392：5 传统+2 数字资源能力组态，数字平台能力为核心条件，内向/外向/内外兼顾三路径，高技术制造业另得渐进/突破两路径）；制造企业平台化转型打破"数据孤岛"（马鸿佳, 2024, N=495：层次回归+fsQCA 混合，两条组态路径） | 马鸿佳 等 (2024, 南开管理评论)；马鸿佳 (2024, 管理世界) |
| 数据来源 | 1987–2022 年 WoS 核心合集英文论文 + CNKI 中 CSSCI 中文论文；文献计量与定性归纳结合 |  |
| 国内演进 | 萌芽 2005–2014（csQCA/fsQCA）→ 扩散 2015–2019（fsQCA/混合）→ 深化 2020–2022（静态/动态 QCA） |  |
| 国外演进 | 引入 2011–2016（csQCA 为主）→ 推广 2017–2019（fsQCA/混合）→ 扩散与深化 2020–2022（静态/动态 QCA） |  |

### 2.2 样本量经验法则（关键）

| 规则 | 具体阈值 | 说明 | 出处 |
|---|---|---|---|
| 频率阈值设定 | 案例数 **>150** → 频率阈值设为 **3 或更高**；**较小样本** → 设为 **2** | 频率阈值高→每组态含更多案例但覆盖率下降；阈值低→覆盖率上升但每组态案例少 |  |
| 一致性阈值 | 最小推荐 **0.75**（原始一致性） | 真值表按原始一致性排序时设置 |  |
| PRI 一致性 | 应高且接近原始一致性（约 **0.7**）；**<0.5** 表明显著不一致 | 避免结果与结果否定中同时存在组态的子集关系 | （Greckhamer 等 2018） |
| 频率截止保留比例 | 建议至少保留总案例的 **80%** | 阈值不应仅基于样本，应调整以符合"证据的性质和质量" |  |
| 条件数量 | 不应包含过多理论与衍生条件 | 条件数增加→有限实证多样性问题更严重 |  |

> **最小样本量经验（已核实）**：QCA 不要求大样本，csQCA/fsQCA 在 **10–50** 中小样本即可开展（Ragin 1987；杜运周、贾良定, 2017）；常用经验法则：**条件数为 n 时，样本宜 ≥ 2ⁿ−1**（王群 等, 2023：6 条件设样本 50，即以"可观察组态覆盖"为准的下位近似）。实证先例跨度很大：40（张启迪 2024 国家样本）、50（王群 2023）、64（王栋 2023 三级公立医院）、202（潘燕萍 2024）、294（傅慧 2024 独角兽企业）、392（马鸿佳 等 2024 中小制造企业）、495（马鸿佳 2024 平台化转型）。**大样本须相应提高频数阈值**（见 §2.2 频率阈值；N>150 时频数阈值通常 ≥3）。最小 N 仍因条件数、有限多样性而异，须结合 Ragin 经典文献与本研究设计确定。

### 2.3 变量操作化与数据校准

- **数据来源**：调查、二手数据等多类型皆可用。
- **构念聚合**：多题项测量时应先计算每个构念单一值，作为 fsQCA 输入，并按传统方法报告。
- **变量→条件**：变量是连续/潜在构念（如"购买意图"），条件是其在集合中的存在与否（如"高购买意图"）；条件的否定即"条件的不存在"。
- **模糊集取值**：0（完全不隶属）至 1（完全隶属），0.5 为中间集（Ragin 2008b）。
- **直接校准三断点**：完全成员、中间、完全非成员。
- **常用阈值方案**：
  - 默认 **0.95 / 0.50 / 0.05**（Ragin 2008a）；不使用恰好 1 和 0（对应正负无穷）。
  - 偏斜分布可用 **80% / 50% / 20%**（Pappas 等 2017）。
  - 七点李克特（1=一点也不，7=非常）：**6 / 4 / 2**（Ordanini 等 2014；Pappas 等 2016）。
  - 五点李克特：**4 / 3 / 2**。
- **阈值选择原则**：不应机械选择，须理解集合含义、据情境调整并透明报告，附原始值对应表（ 25）。
- **软件操作**：fsQCA 4.1，数据集为 CSV；0.5 上的案例被删除，Fiss (2011) 建议在完全成员得分 <1 的因果条件中加 **0.001** 常数。
- **真值表**：2^k 行（k 为结果预测变量数）。

### 2.4 三种解与呈现

| 解类型 | 特征 | 出处 |
|---|---|---|
| 复杂解 | 所有逻辑运算的可能组合，数量庞大、解释困难 |  |
| 简约解 | 基于简化假设，呈现不可省略的"核心条件"（自动识别） | （Fiss 2011） |
| 中间解 | 仅含理论上合理反事实，含核心+外围条件，最常用 | （Liu 等 2017；Ragin 2008b） |

- **核心 vs 外围**：核心条件出现于简约解与中间解；仅出现在中间解的称"外围条件"（ 27）。
- **呈现符号**（Fiss 2011）：● 存在、⊗ 不存在/否定、空白"不关心"；大圆/小圆区分核心/外围。
- **整体覆盖度**可与回归 R² 比较（Woodside 2013）。
- 集合论度量须报告：唯一覆盖、原始覆盖、原始一致性、解决方案覆盖、解决方案一致性。

### 2.5 英文顶刊 fsQCA 实证范例（方法参照，FT/UTD/ABS）

> 以下范例选自 IMA「研究主线」知识库中的英文管理学顶刊论文，示范 QCA 在创业、战略、金融、服务等领域国际期刊的选题与操作化范式（卷期页码已核验）。

| 文献 | 期刊 / 层级 | 设计与样本 | 对研究设计的启示 |
|---|---|---|---|
| Douglas, Shepherd, & Prentice (2020) | *Journal of Business Venturing* | fsQCA 刻画创业的"更细粒度"理解；以组态揭示创业现象的并发因果 | 示范如何用 fsQCA 把"创业"这一复杂现象拆解为多重并发条件组态，而非单一净效应（见 S5 §2.10） |
| Gabrielsson, Galan, & Politis (2025) | *Journal of Business Research* | "创业激情"的学习路径：创业教育项目中的组态研究 | 组态视角用于揭示"何种条件组合催生创业激情"，适合中样本跨案例比较 |
| Judge 等 (2015) | *Journal of Management Studies* | 跨国（多国样本）创业阈值企业的"变革能力"组态 | 跨国家/制度情境的组态比较，须谨慎处理情境异质性与案例代表性 |
| Campbell & Sirmon (2016) | *Academy of Management Journal* | 以模糊逻辑/组态视角分析投资者对并购宣告的认知 | 将"市场认知"操作化为条件组态，示范组态方法进入公司金融/战略领域的可行性 |
| Leppänen, George, & Alexy (2023) | *Academy of Management Journal* | 新商业模式×竞争战略×环境的价值驱动组态如何导向高绩效 | 示范"商业模式新颖性"的条件化：新颖性只有与战略/环境要素组合时才有效应（组态化权变） |
| Gupta, Crilly, & Greckhamer (2020) | *Strategic Management Journal* | 利益相关者参与战略×国别制度对公司绩效的组态影响（大样本） | 示范跨层级（战略×制度）条件组合与大样本组态分析的可行性 |
| Howell, Bingham, & Hendricks (2022) | *Organization Science* | 单干创业 vs. 联合创业的选择组态 | 示范"创业团队形成"的组态化：资源/经验/行业条件共同决定单干或联合 |

## 3. 研究设计实操要点

> 以下以 fsQCA 为主，整合"实操流程 + 写作范式"。技术执行请交 `qca-analysis-expert`。

### 步骤清单

1. **选题与理论定位** — 选择组态视角；通过演绎/归纳/溯因构建因果配方。
   - 演绎：自上而下假设因果配方（如代理理论 vs 管家理论互补组态）。
   - 归纳：自下而上，借元理论（如 TACT、March 探索/利用）理解现象后做 QCA 分析。
2. **条件与案例选择** — 据研究背景与数据可用性选条件；注意条件数增多加剧有限多样性。
   - 案例范围：样本量决定频率阈值（见 §2.2）；建议频率截止保留 ≥80% 案例。
3. **变量操作化** — 多题项聚合成构念值；界定变量→条件（存在/不存在）。
4. **数据校准** — 选直接/间接校准；定三断点并透明报告理由与原始值表。
5. **必要条件测试（先于充分条件）** — 若理论暗示必要条件，应先做必要条件分析。
6. **真值表分析** — 设频率与一致性阈值（≥0.75），处理逻辑余项，报告可观察/不可观察实例比例（ 47）。
7. **获取与呈现解** — 报告复杂/简约/中间三解；用 Fiss 符号表呈现核心/外围条件（ 48）。
8. **测试特定命题 / 预测效度** — `fuzzyand`/`fuzzynot` 建模；随机拆分子样本与留存样本，比较一致性/覆盖率。
9. **写作与解释** — 利用不对称性分别考察结果存在与缺失；布尔表示法陈述解；深入案例解释条件间互补/替代关系。

## 4. 常见误区与避坑

| 误区 | 正确做法 | 出处 |
|---|---|---|
| 机械选校准阈值 | 理解集合含义、据情境调整并透明报告 | （25） |
| 仅在 0.5 上分析中间成员 | 0.5 上案例被删除，对 <1 的条件加 0.001 常数 | （Fiss 2011） |
| 忽略逻辑余项处理 | 用多样抽样对抗有限多样性，报告可观察/不可观察实例比例 |  |
| 理论/衍生条件过载 | 条件越多有限多样性越严重，勿包含过多 |  |
| 先测充分条件再测必要条件 | 必要条件分析应在充分条件之前 |  |
| 频率截止只看样本大小 | 还应符合"证据性质与质量"，保留 ≥80% 案例 |  |
| 忽略不对称性 | 分别分析结果的存在与缺失，丰富因果视角 |  |
| 不报告全部集合论度量 | 须报告唯一/原始覆盖、原始/解决方案一致性等 |  |

## 5. 与 qca-analysis-expert 的互补边界

| 本技能（qca-research-design） | qca-analysis-expert（技术执行层） |
|---|---|
| 研究设计、变量操作化、阈值选择理由、样本量经验法则 | 实际运行 fsQCA 算法、生成真值表与三类解 |
| 写作范式、布尔表示法、解的类型与符号呈现规范 | 软件参数执行、一致性/PRI/SYM 一致性计算 |
| 常见误区识别、有限多样性与逻辑余项策略 | 预测效度建模、XY Plot 等技术操作 |
| 应用现状综述、理论多样性/组态多样性建议 | 具体案例数据计算与输出 |

> 调用关系：**研究设计与写作**用本技能；**算法执行**交 `qca-analysis-expert`；并加载 `qca-companion` 做互补校对。

## 6. 关键引用（APA）

- 池毛毛，潘美钰，周敏，杜运周. (2024). QCA方法在国内外管理学领域的应用：演进、比较与展望. *经济管理*, 46(1), 184–208.
- Fiss, P. C. (2011). Building better causal theories: A fuzzy set approach to typologies in organization research. *Academy of Management Journal*, 54(2), 393–420.
- Greckhamer, T., Furnari, S., Fiss, P. C., & Aguilera, R. V. (2018). Studying configurations with qualitative comparative analysis: Best practices in strategy and organization research. *Strategic Organization*, 16(4), 482–495.
- Pappas, I. O., & Woodside, A. G. (2021). Fuzzy-set Qualitative Comparative Analysis (fsQCA): Guidelines for research practice in Information Systems and marketing. *International Journal of Information Management*, 58, 102310.
- Park, Y., Fiss, P. C., & El Sawy, O. A. (2020). Theorizing the multiplicity of digital phenomena: The ecology of configurations, causal recipes, and guidelines for applying QCA. *MIS Quarterly*, 44(4), 1493–1520.
- Ragin, C. C. (1987). *The Comparative Method: Moving Beyond Qualitative and Quantitative Strategies*. University of California Press.
- Ragin, C. C. (2008). *Redesigning Social Inquiry: Fuzzy Sets and Beyond*. University of Chicago Press.
- Woodside, A. G. (2013). Moving beyond multiple regression analysis to algorithms: Calling for adoption of a paradigm shift from symmetric to asymmetric thinking in data analysis and crafting theory. *Journal of Business Research*, 66(4), 463–472.
- 王栋, 李佳玲, 朱桂菊, 等. (2023). TOE框架下三级公立医院高质量发展多元路径研究——基于模糊集定性比较分析. *中国卫生政策研究*, 16(8), 74–79.
- 王群, 张甜甜, 应晓华. (2023). 协同治理模式如何提升惠民保参保率？——基于50个案例的模糊集定性比较分析. *中国卫生政策研究*, 16(11), 8–15.
- 傅慧, 郭希婕, 肖雄辉. (2024). 合法性组合如何促进独角兽企业的延展成长：基于模糊集的定性比较分析. *中国软科学*, (9), 132–141.
- 张启迪, 俞睿骁, 苏中锋. (2025). 制度和企业家特征如何影响社会创业活跃度？——基于模糊集定性比较分析方法的研究. *外国经济与管理*, 47(3), 19–32.
- Leppänen, P., George, G., & Alexy, O. (2023). When do novel business models lead to high performance? A configurational approach to value drivers, competitive strategy, and firm environment. *Academy of Management Journal*, 66(1), 164–194. https://doi.org/10.5465/amj.2020.0969
- Gupta, K., Crilly, D., & Greckhamer, T. (2020). Stakeholder engagement strategies, national institutions, and firm performance: A configurational perspective. *Strategic Management Journal*, 41(10), 1869–1900. https://doi.org/10.1002/smj.3204
- Howell, T., Bingham, C., & Hendricks, B. (2022). Going alone or together: A configurational analysis of solo founding vs. cofounding. *Organization Science*, 33(6), 2421–2450. https://doi.org/10.1287/orsc.2021.1548
- 潘燕萍, 巫洁雯, 黄文萍. (2024). "差序格局"视域下提高企业家精神的组态路径研究：基于NCA与fsQCA的混合分析. *中国人力资源开发*, 41(8), 67–84.
- 马鸿佳, 王亚婧, 苏中锋. (2024). 数字化转型背景下中小制造企业如何编排资源利用数字机会？——基于资源编排理论的fsQCA研究. *南开管理评论*, 27(4), 90–100, 208.
- 马鸿佳. (2024). 制造企业平台化转型如何打破"数据孤岛"？——基于人—数交互理论的混合方法研究. *管理世界*, 2024(4).
- Douglas, E. J., Shepherd, D. A., & Prentice, C. (2020). Using fuzzy-set QCA for a finer-grained understanding of entrepreneurship. *Journal of Business Venturing*, 35(1), Article 105970. https://doi.org/10.1016/j.jbusvent.2019.105970
- Gabrielsson, J., Galan, N., & Politis, D. (2025). Learning pathways to entrepreneurial passion in venture creation programs: A configurational study. *Journal of Business Research*, 186, Article 114944. https://doi.org/10.1016/j.jbusres.2024.114944
- Judge, W. Q., Hu, H. W., Gabrielsson, J., Talaulicar, T., Witt, M. A., Zattoni, A., Lopez-Iturriaga, F., Chen, J. J., Shukla, D., Quttainah, M., Adegbite, E., Rivas, J. L., & Kibler, B. (2015). Configurations of capacity for change in entrepreneurial threshold firms. *Journal of Management Studies*, 52(4), 506–530. https://doi.org/10.1111/joms.12121
- Campbell, J. T., & Sirmon, D. G. (2016). Fuzzy logic and the market: A configurational approach to investor perceptions of acquisition announcements. *Academy of Management Journal*, 59(1), 163–187. https://doi.org/10.5465/amj.2013.0663

> 注：APA 文献条目的卷期页码以原刊为准，引用时建议二次核实。
