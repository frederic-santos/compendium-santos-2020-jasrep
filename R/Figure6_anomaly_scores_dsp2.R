##############################
### Load required packages ###
##############################
library(anthrostat)
library(solitude)

######################
### Import dataset ###
######################
## Load DSP2 data:
data(data_dsp)
## Filter dataset:
dat <- subset(data_dsp, Collection == "Cleveland-EA")
dat <- subset(dat, Sex == "M")
dat <- subset(dat, Lat == "L")
dat <- na.omit(dat[, 5:ncol(dat)])

#############################
### Run iForest algorithm ###
#############################
isofo <- isolationForest$new(nproc = 3,
                             sample_size = nrow(dat),
                             num_trees = 1000)
isofo$fit(dat)
## Compute the anomaly scores:
scores <- round(isofo$scores, 3)
scores <- as.data.frame(scores[, c(1, 3)])
colnames(scores) <- c("ID", "anomaly_score")
## Sort the anomaly scores in decreasing order:
head(scores[order(scores$anomaly_score, decreasing = TRUE), ], 10)
ordered_scores <- scores[order(scores$anomaly_score, decreasing = TRUE), ]
## Plot the anomaly scores:
par(cex = 1.21, mar = c(1, 4.5, 1, 1))
plot(x = 1:nrow(ordered_scores), y = ordered_scores$anomaly_score,
     type = "b", pch = 15, col = "navy", ylim = c(0.35, 0.7),
     xlab = "", ylab = "Anomaly score", axes = FALSE,
     xlim = c(0, nrow(dat)),
     main = "Anomaly scores by decreasing order")
## Add various decorations:
text(x = 1:3, y = ordered_scores$anomaly_score[1:3],
     labels = rownames(dat)[ordered_scores$ID[1:3]], col = "navy",
     cex = 0.9, pos = c(3, 2, 4))
axis(side = 2)
abline(h = 0.5, lty = 2, col = "gray30")
