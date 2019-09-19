  ## Load required packages:
  library(aplpack)
  library(bioanth)
  library(FactoMineR)
  ## Load the Goldman Data Set:
  data(goldman, package = "bioanth")
  ## Select a subsample of individuals (Delaware):
  goldman <- as.data.frame(goldman[ , c("NOTE", "RTMLD", "RTML")])
  goldman <- na.omit(subset(goldman, NOTE == "Delaware"))
  rownames(goldman) <- 1:nrow(goldman) # relabel the rows
  ## Draw a bagplot:
  par(mar = c(4.5, 4.5, 1, 1), cex = 1.15)
  bagplot(x = goldman$RTMLD, y = goldman$RTML, na.rm = TRUE,
          cex = 1.2, show.whiskers = FALSE,
          xlab = "RTMLD", ylab = "RTML", show.center = FALSE)
  set.seed(201909)
  autoLab(x = goldman$RTMLD, y = goldman$RTML,
          labels = rownames(goldman))
