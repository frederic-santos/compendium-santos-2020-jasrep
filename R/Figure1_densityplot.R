  ## Load the required package:
  library(bioanth)
  ## Load the Goldman Data Set:
  data(goldman, package = "bioanth")
  ## Select the population sample from Ipituaq (males only):
  dat <- subset(goldman, NOTE == 'Ipituaq - Point Hope, AK' & Sex == "M")
  ## Compute left-right asymmetry in humeral length:
  asym <- na.omit(dat$LHML - dat$RHML)
  names(asym) <- 1:length(asym) # each individual is given a label
  ## Compute some sample estimates:
  m <- mean(asym)
  s <- sd(asym)
  ## Kernel density estimation:
  dens <- density(asym)
  ## Density plot:
  par(cex = 1.15, mar = c(4.5, 4.5, 1, 1))
  plot(dens, main = "")
  rug(asym, col = "red", lwd = 2)
  ## Add the names of the two highest values:
  text(x = sort(asym, dec = TRUE)[1:2], y = 0, pos = 3,
       labels = names(sort(asym, dec = TRUE)[1:2]), col = "red")
  ## Add vertical lines (thresholds for outlier detection):
  abline(v = c(m + 2*s, m - 2*s), col = "blue", lwd = 2, lty = 2)
