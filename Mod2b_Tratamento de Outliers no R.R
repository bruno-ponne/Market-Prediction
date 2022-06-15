# Tratamento de outliers no R
# tsoutliers

library(forecast)
library(readr)

data <- read_csv("Downloads/puc_full_4.csv")

ts_volume <- ts(data$Volume)
ts_oil <- ts(data$oil)
ts_PETR4 <- ts(data$PETR4)
ts_PETROBRAS <- ts(data$PETROBRAS)
ts_CRISE <- ts(data$CRISE)


outlier_vol <- tsoutliers(ts_volume)
i_vol <- outlier_vol[["index"]]
r_vol <- outlier_vol[["replacements"]]
a_vol <- data$Volume[i_vol]
out_vol <- data.frame(i_vol, a_vol,r_vol)
write.csv(out_vol, "outlier_vol.csv")


outlier_oil <- tsoutliers(ts_oil)
i_oil <- outlier_oil[["index"]]
r_oil <- outlier_oil[["replacements"]]
a_oil <- data$oil[i_oil]
out_oil <- data.frame(i_oil, a_oil,r_oil)
write.csv(out_oil, "outlier_oil.csv")

outlier_PETR4 <- tsoutliers(ts_PETR4)
i_PETR4 <- outlier_PETR4[["index"]]
r_PETR4 <- outlier_PETR4[["replacements"]]
a_PETR4 <- data$PETR4[i_PETR4]
out_PETR4 <- data.frame(i_PETR4, a_PETR4,r_PETR4)
write.csv(out_PETR4, "outlier_PETR4.csv")

outlier_PETROBRAS <- tsoutliers(ts_PETROBRAS)
i_PETROBRAS <- outlier_PETROBRAS[["index"]]
r_PETROBRAS <- outlier_PETROBRAS[["replacements"]]
a_PETROBRAS <- data$PETROBRAS[i_PETROBRAS]
out_PETROBRAS <- data.frame(i_PETROBRAS, a_PETROBRAS,r_PETROBRAS)
write.csv(out_PETROBRAS, "outlier_PETROBRAS.csv")

outlier_CRISE <- tsoutliers(ts_CRISE)
i_CRISE <- outlier_CRISE[["index"]]
r_CRISE <- outlier_CRISE[["replacements"]]
a_CRISE <- data$CRISE[i_CRISE]
out_CRISE <- data.frame(i_CRISE, a_CRISE,r_CRISE)
write.csv(out_CRISE, "outlier_CRISE.csv")

