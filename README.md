An overview of some robust methods for univariate and multivariate outliers detection with applications to archaeological samples
=================================================================================================================================

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.

**Author**: Frédéric Santos

*Submitted to Journal of Archaeological Science: Reports*, 2019.

# Supporting Information

This repository contains the org source file of the original manuscript, thus making it a fully reproducible article with the latest versions of Emacs and Org-mode. Detailed instructions are available in the corresponding directory, `/Org_manuscript/`.

For non Emacs users, a set of separate R source files also allows the replication of all the results (Tables and Figures) presented in the article. All source files are independent (running all of them is not mandatory); and each Table or Figure is associated to an R source file. They can be found in the `/R/` directory.

The encoding system is UTF-8 for all source files.

## Minimal prerequisites

1. Please make sure that you have a recent R version (R >= 3.6.0). Windows users should also have [Rtools](https://cran.r-project.org/bin/windows/Rtools/) installed, and their *PATH* environment variable set accordingly.

2. Several R packages are required. To install all of them:
   - Install some CRAN packages by running the following R code:
    
         install.packages(c("aplpack", "devtools", "FactoMineR", "mvoutlier", "quantreg", "robustbase", "solitude", "univOutl"), dep = TRUE)
    
   - Then install some other packages available on GitLab or GitHub by running the following R code:

         devtools::install_git('https://gitlab.com/f.santos/anthrostat.git')
         devtools::install_github("geanes/bioanth")
