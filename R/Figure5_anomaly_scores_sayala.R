##############################
### Load required packages ###
##############################
library(bioanth)
library(FactoMineR)
library(solitude)

#################################
### Load the Goldman Data Set ###
#################################
data(goldman)
goldman <- as.data.frame(goldman) # tibble to data.frame
## Select the population sample "Sayala":
sayala <- subset(goldman, NOTE == "Sayala")
## Select three appropriate variables (max. lengths):
sayala <- na.omit(sayala[ , c("LFML", "LTML", "LHML")])
## Relabel the individuals:
rownames(sayala) <- 1:nrow(sayala)

#################################
### Build an isolation forest ###
#################################
isofo <- isolationForest$new(seed = 2020, nproc = 2,
                             sample_size = nrow(sayala),
                             num_trees = 100)
isofo$fit(sayala)
## Compute the anomaly scores:
scores <- round(isofo$scores, 3)
scores <- as.data.frame(scores[, c(1, 3)])
colnames(scores) <- c("ID", "anomaly_score")
## Sort the anomaly scores in decreasing order:
head(scores[order(scores$anomaly_score, decreasing = TRUE), ], 10)
ordered_scores <- scores[order(scores$anomaly_score, decreasing = TRUE), ]

###############################
### Plot the anomaly scores ###
###############################
par(cex = 1.21, mar = c(2, 4.5, 1, 1))
plot(x = 1:nrow(ordered_scores), y = ordered_scores$anomaly_score,
     type = "b", pch = 15, col = "navy", ylim = c(0.3, 0.85),
     xlab = "", ylab = "Anomaly score", axes = FALSE,
     main = "Anomaly scores by decreasing order")
## Add various decorations:
text(x = 1:nrow(ordered_scores), y = ordered_scores$anomaly_score,
     labels = ordered_scores$ID, pos = 3, col = "navy")
axis(side = 2)
abline(h = 0.5, lty = 2, col = "gray30")
