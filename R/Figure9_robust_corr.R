### Load required packages:
library(bioanth)
library(mvoutlier)

### Load the Goldman Data Set:
data(goldman)

### Select the population sample "El Hesa":
hesa <- subset(goldman, NOTE == "Dynastic Egyptian, El Hesa")
hesa <- na.omit(hesa[ , c("RTML", "RFML")])

### Compute and plot robust correlation:
corr.plot(x = hesa$RTML, y = hesa$RFML,
          alpha = 0.05, quan = 3/4,
          xlab = "RTML (mm)", ylab = "RFML(mm)",
          pch = 16, asp = 1)
