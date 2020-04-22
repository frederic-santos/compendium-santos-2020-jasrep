##############################
### Load required packages ###
##############################
library(bioanth)
library(robustbase)

#################################
### Load the Goldman Data Set ###
#################################
data(goldman, package = "bioanth")
goldman <- as.data.frame(goldman) # tibble to data.frame
## Select the population sample "Sayala" :
sayala <- subset(goldman, NOTE == "Sayala")
## Select appropriate variables (left bones, 3 max. lengths):
sayala <- na.omit(sayala[ , c("LFML", "LTML", "LHML")])
## Relabel the individuals (more convenient in graphical representation):
rownames(sayala) <- 1:nrow(sayala)

#####################################
### Compute Mahalanobis distances ###
#####################################
## Classic distance:
maha <- mahalanobis(sayala, center = colMeans(sayala),
                    cov = cov(sayala))
## Robust distances:
mcd <- covMcd(sayala, alpha = 0.75,
              nsamp = "best")$mah
## Add individual IDs:
names(mcd) <- names(maha) <- rownames(sayala)

#########################################################
### Plot the classic and robust Mahalanobis distances ###
#########################################################
set.seed(12345) # arbitrary seed to ensure reproducbility
par(cex = 1.15, mar = c(2.5, 4, 1, 1))
stripchart(x = list(maha, mcd), method = "jitter",
           vertical = TRUE, group.names = c("Classic", "Robust"),
           pch = 16, jitter = 0.04, ylab = "Mahalanobis distances")
## Add thresholds (Pearson quantiles):
abline(h = qchisq(0.99, df = 3), lty = 2, col = "red")
abline(h = qchisq(0.95, df = 3), lty = 2, col = "orange")
## Add the names of the individuals detected as outliers:
text(x = 2, y = sort(mcd, decreasing = TRUE)[1:3],
     labels = names(sort(mcd, decreasing = TRUE))[1:3], pos = 2)
text(x = c(0.95, 1.05), y = sort(maha, decreasing = TRUE)[1:2],
     labels = names(sort(maha, decreasing = TRUE))[1:2], pos = 3)
## Add the legend:
legend("topleft", lty = 2, col = c("red", "orange"),
       legend = c(expression(paste(alpha, " = ", 0.01)),
                  expression(paste(alpha, " = ", 0.05))))

##########################
### Note to the reader ###
##########################
## Everything is (re)coded manually here, to show the details of the
## computations. But there are built-in R functions to draw equivalent
## (or even richer) plots automatically.
## An example:
## mcd <- covMcd(sayala, alpha = 0.75, nsamp = "best")
## plot(mcd, which = "dd")
