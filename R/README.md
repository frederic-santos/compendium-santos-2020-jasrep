R source code for all figures and tables from the original manuscript
=====================================================================

For non-Emacs users, or simply for a lighter re-use of the R source code produced in this study, you can find in this directory the source code associated to each figure or table.

## Install prerequisites

1. Please make sure that you have a recent R version (R >= 3.6.1). Windows users should also have [Rtools](https://cran.r-project.org/bin/windows/Rtools/) installed, and their `PATH` environment variable set accordingly.

2. Several R packages are required. To install all of them:

   - Install some CRAN packages by running the following R code:
   ```r
   install.packages(c("aplpack", "devtools", "FactoMineR", "mvoutlier", 
                      "quantreg", "robustbase", "solitude", "univOutl"),
                    dep = TRUE)
   ```

   - Then install some other packages available on GitLab or GitHub by running the following R code:
   ```r
   devtools::install_git('https://gitlab.com/f.santos/anthrostat.git')
   devtools::install_github("geanes/bioanth")
   ```

## Note
Please note that the packages you will download may correspond to newer versions than the packages used when writing the manuscript. In some cases, this might lead to slightly different results or outputs. If you want to use the exact same versions to ensure a perfect reproducibility, please use the Docker image and the Org source file of the manuscript instead.
