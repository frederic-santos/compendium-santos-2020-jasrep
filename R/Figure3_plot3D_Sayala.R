##############################
### Load required packages ###
##############################
library(bioanth)
library(scatterplot3d)

#################################
### Load the Goldman Data Set ###
#################################
data(goldman, package = "bioanth")
## Select the population sample "Sayala":
sayala <- subset(goldman, NOTE == "Sayala")
## Select appropriate variables (left bones, 3 max. lengths):
sayala <- na.omit(sayala[ , c("LFML", "LTML", "LHML")])
## Relabel the individuals (more convenient in graphical representation):
rownames(sayala) <- 1:nrow(sayala)

###############
### 3D plot ###
###############
s3d <- scatterplot3d(x = sayala[, 1], y = sayala[, 2], z = sayala[, 3],
                     highlight.3d = TRUE, box = FALSE, type = "h",
                     pch = 16, lty.hplot = 3,
                     xlab = "LFML (mm)", ylab = "LTML (mm)", zlab = "LHML (mm)",
                     mar = c(2.5, 2.5, 0, 2))
text(s3d$xyz.convert(sayala), labels = rownames(sayala),
     pos = 3, cex = 0.9)
