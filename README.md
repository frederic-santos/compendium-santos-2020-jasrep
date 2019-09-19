An overview of some robust methods for univariate and multivariate outliers detection with applications to archaeological samples
=================================================================================================================================

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.

**Author**: Frédéric Santos

*Submitted to Journal of Archaeological Science: Reports*, 2019.

**Supporting Information: R code.**

This set of R source files allows the replication of all the results (Tables and Figures) presented in the article. All source files are independent (running all of them is not mandatory); and each Table or Figure is associated to an R source file.
The encoding system is UTF-8 for all source files.

**Prerequisites**

Please note that several R packages are required. To install all of them:
- Please make sure that you have a recent R version (R >= 3.6.0).
- Install some CRAN packages by running the following R code:
    
        install.packages(c("aplpack", "devtools", "FactoMineR", "mvoutlier", "quantreg", "robustbase", "solitude", "univOutl"), dep = TRUE)
    
- Then install some other packages avilable on GitLab or GitHub by running the following R code:

        devtools::install_git('https://gitlab.com/f.santos/anthrostat.git')
        devtools::install_github("geanes/bioanth")
