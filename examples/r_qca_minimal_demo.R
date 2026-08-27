# ============================================================
# R/QCA 最小可跑通示例（配合本包 qca-fsqca-practice §2 阅读运行）
# 依赖：R >= 4.x；install.packages(c("QCA","admisc"))
# 运行：Rscript examples/r_qca_minimal_demo.R
# 验证环境：R 4.6.1 + QCA 3.25（E:/R/R-4.6.1），2026-08-28 实测通过
# ============================================================
suppressMessages(library(QCA))

## ---- Part 1: csQCA 全流程（包内置 Lipset 数据 LC，已为 0/1 清晰集）----
data(LC)
tt <- truthTable(LC, outcome = "SURV",
                 conditions = c("DEV","URB","LIT","IND","STB"),
                 incl.cut = 0.8, show.cases = FALSE)
cat("真值表行数:", nrow(tt$tt), "\n")
sol_cs <- minimize(tt, include = "?")   # 含逻辑余项
cat("---- csQCA 最小化解（Lipset 民主存续）----\n")
print(sol_cs)

## ---- Part 2: fsQCA 全流程（合成连续变量，示范三锚点校准）----
set.seed(42)
n <- 40
fsdat <- data.frame(
  EFF  = runif(n, 0, 10),   # 例：执行效率（李克特加总等真实场景替换）
  TEC  = runif(n, 0, 10),   # 数字技术嵌入
  MKT  = runif(n, 0, 10),   # 市场环境
  OUT  = runif(n, 0, 10)    # 结果：绩效
)
# 三锚点校准（95/50/5 百分位）：完全隶属 / 交叉点 / 完全不隶属
for (v in names(fsdat)) {
  fsdat[[v]] <- calibrate(fsdat[[v]], type = "fuzzy",
                          thresholds = quantile(fsdat[[v]], c(.95, .5, .05)))
}
tt2 <- truthTable(fsdat, outcome = "OUT", conditions = c("EFF","TEC","MKT"),
                  incl.cut = 0.8, n.cut = 1, show.cases = FALSE)
cat("\nfsQCA 真值表行数:", nrow(tt2$tt), "\n")
sol_fs <- minimize(tt2, include = "?")
cat("---- fsQCA 最小化解（合成数据演示）----\n")
print(sol_fs)

cat("\n✅ 端到端 OK：truthTable -> minimize（csQCA + fsQCA 双轨），QCA",
    as.character(packageVersion("QCA")), "\n")
