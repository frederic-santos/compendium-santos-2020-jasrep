  ## Load required packages:
  library(bioanth)
  library(MASS)
  library(quantreg)
  ## Load the Goldman Data Set:
  data(goldman)
  ## Select the population sample "El Hesa":
  hesa <- subset(goldman, NOTE == "Dynastic Egyptian, El Hesa")
  hesa <- na.omit(hesa[ , c("RTML", "RFML")])
  ## Scatterplot:
  par(cex = 1.12, mar = c(4, 4, 1, 1))
  plot(RFML ~ RTML, data = hesa, asp = 1)
  ## 1. Usual OLS regression line (with outlier):
  abline(lm(RFML ~ RTML, data = hesa), lty = 2)
  ## 2. Usual OLS regression line (without outlier):
  abline(lm(RFML ~ RTML, data = hesa[-23, ]), col = "black")
  ## 3. Robust regression:
  abline(rlm(RFML ~ RTML, data = hesa), col = "red")
  ## 4. Quantile regression:
  abline(rq(RFML ~ RTML, data = hesa), col = "blue")
  ## Add legend:
  legend("topleft", lty = c(2, 1, 1, 1), col = c("black", "black", "red", "blue"),
         legend = c("OLS (with outlier)",
                    "OLS (discarding outlier)",
                    "Robust iterative regression",
                    "Quantile regression"))
