(TeX-add-style-hook
 "manuscript_outliers_Santos_2020"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("elsarticle" "review" "3p")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem") ("babel" "english") ("mathabx" "matha" "mathb")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "elsarticle"
    "elsarticle10"
    "inputenc"
    "fontenc"
    "graphicx"
    "grffile"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "textcomp"
    "amssymb"
    "capt-of"
    "hyperref"
    "color"
    "babel"
    "mathabx"
    "lineno")
   (TeX-add-symbols
    "med")
   (LaTeX-add-labels
    "sec:orgb45be31"
    "sec:org2293c9e"
    "sec:org1ab8be1"
    "fig:failure2sd"
    "sec:orgfd4fbd7"
    "eq:formula_loc_scale_univ"
    "tab:comparison_loc_scale_methods"
    "sec:orgc3de5a2"
    "sec:orgd4ae117"
    "eq:boxplot"
    "sec:org9cc75b7"
    "eq:adjusted_boxplot"
    "sec:orgbb39f4f"
    "fig:asymGiza"
    "sec:org3e0b5ad"
    "sec:org65e2792"
    "eq:maha"
    "fig:plot3d_Sayala"
    "fig:stripcharts-maha"
    "sec:org3399396"
    "fig:anomaly_scores_sayala"
    "sec:org273e850"
    "fig:anomaly_scores_dsp2"
    "fig:ddc_dsp2"
    "sec:org8317653"
    "sec:orgce6586f"
    "fig:type_outliers_reg"
    "fig:robust-corr"
    "fig:robust-regression"
    "sec:orgf72f72d"
    "fig:bagplot"
    "sec:org967b1c5"
    "sec:org933ab67"
    "sec:org7f5054f"
    "sec:orgbe71fc3"
    "appendix:rob-scale-estimate"
    "sec:org9de07c2"
    "sec:orgabf1af0"
    "eq:mad"
    "sec:org177c486"
    "eq:sn"
    "sec:org78b7f9c"
    "appendix:robust-maha"
    "eq:robust_maha"
    "sec:org8a5e251"
    "appendix:r-packages")
   (LaTeX-add-bibliographies
    "complete_biblio"))
 :latex)

