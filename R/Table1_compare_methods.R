  ## Load the required package:
  library(anthrostat)
  library(bioanth)
  ## Load the Goldman Data Set:
  data(goldman, package = "bioanth")
  ## Select the population sample from Ipituaq (males only):
  dat <- subset(goldman, NOTE == 'Ipituaq - Point Hope, AK' & Sex == "M")
  ## Compute left-right asymmetry in humeral length:
  asym <- na.omit(dat$LHML - dat$RHML)
  names(asym) <- 1:length(asym) # each individual is given a label
  ## Summarize and compare four different outlier detection strategies:
  results <- norm_outliers(asym, coef = 2)
  summary(results)
