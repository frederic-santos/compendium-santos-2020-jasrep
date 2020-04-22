##############################
### Load required packages ###
##############################
library(anthrostat)
library(cellWise)

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

#########################
### Run DDC algorithm ###
#########################
ddc <- DDC(dat, DDCpars = list(tolProb = 0.975))
cellWise::cellMap(D = ddc$remX,
                  R = ddc$stdResid,
                  rowlabels = rownames(dat),
                  columnlabels = colnames(dat),
                  showVals = NULL)
