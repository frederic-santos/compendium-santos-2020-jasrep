  ## Load required packages:
  library(bioanth)
  library(univOutl)
  ## Load the Goldman Data Set:
  data(goldman)
  goldman <- as.data.frame(goldman) # tibble to data.frame
  ## Select the population sample of Giza:
  dat <- subset(goldman, NOTE == "Pyramiden, Gizeh")
  ## Compute asymmetry in tibia medio-lateral diameter:
  dat <- na.omit(dat[ , c("RTMLD", "LTMLD")])
  asym <- dat$RTMLD - dat$LTMLD
  names(asym) <- 1:length(asym)
  ## Kernel density estimation:
  kde <- density(asym, adjust = 1.4)
  ## Density plot:
  par(cex = 1.15, mar = c(4.5, 4.5, 1, 1))
  plot(kde, main = "")
  rug(asym, col = "red", lwd = 2)
  ## Add the names of the most extreme values on the right tail:
  text(x = sort(asym, dec = TRUE)[1:4], y = 0, pos = c(3, 4, 2, 3),
       labels = names(sort(asym, dec = TRUE)[1:4]), col = "red")
  ## Add thresholds for outlier detection:
  abline(v = boxB(asym, method = "resistant")$fences, # standard fences
         col = "darkgoldenrod", lty = 2, lwd = 2)
  abline(v = boxB(asym, method = "asymmetric")$fences, # asymmetric fences
         col = "purple", lty = 3, lwd = 2)
  ## Add a legend:
  legend("topright", lty = c(2, 3),
         col = c("darkgoldenrod", "purple"),
         legend = c("Standard boxplot fences",
                    "Asymmetric boxplot fences")
         )
