  ## Load the required package:
  library(bioanth)
  ## Load the Goldman Data Set:
  data(goldman, package = "bioanth")
  ## Define an helper function for the plots:
  plot_out_GDS <- function(data, pop, x_var = "RHML", y_var = "RTML",
                           title = NULL, index_outl = NULL) {
      ## Select a sub-sample from 'data':
      samp <- subset(data, NOTE == pop)
      ## Select complete cases for two variables:
      samp <- na.omit(samp[ , c(x_var, y_var)])
      ## Plot linear regression:
      form <- as.formula(paste(y_var, "~", x_var))
      plot(form, data = samp, pch = 16, main = title)
      abline(lm(form, data = samp), lty = 2)
      abline(lm(form, data = samp[-index_outl, ]), lty = 2, col = "blue")
  }
  ## Set graphial parameters:
  par(mfrow = c(1, 3), cex = 0.9)
  ## Type 1: extreme residual value near the average of X
  plot_out_GDS(data = goldman, pop = "Tsugumo Shell Mound",
             x_var = "RHML", y_var = "RTML",
             title = "(1) Tsugumo Shell Mound", index_outl = 8)
  ## Type 2: extreme individual on the X axis
  plot_out_GDS(data = goldman, pop = "Germany, Hamann-Todd",
             x_var = "LFML", y_var = "RFML",
             title = "(2) Germany, Hamann-Todd", index_outl = c(15, 21))
  ## Type 3: leverage point
  plot_out_GDS(data = goldman, pop = "Dynastic Egyptian, El Hesa",
             x_var = "RTML", y_var = "RFML",
             title = "(3) Dynastic Egyptian, El Hesa", index_outl = 23)
