  ## Load the required packages:
  library(anthrostat)
  library(bioanth)
  ## Load the Goldman Data Set:
  data(goldman, package = "bioanth")
  ## Select the population sample from Ipituaq (males only):
  dat <- subset(goldman, NOTE == 'Ipituaq - Point Hope, AK' & Sex == "M")
  ## Compute left-right asymmetry in humeral length:
  asym <- na.omit(dat$LHML - dat$RHML)
  names(asym) <- 1:length(asym) # each individual is given a label
  ## Set graphical parameters:
  par(cex = 1.15, mar = c(4.5, 4.5, 1, 1))
  ## Perform outliers detection:
  id_outl <- norm_outliers(asym, coef = 2)
  ## Kernel density plot, with decision thresholds for outliers:
  plot(id_outl, method = "mean_std", number_id = 2)
