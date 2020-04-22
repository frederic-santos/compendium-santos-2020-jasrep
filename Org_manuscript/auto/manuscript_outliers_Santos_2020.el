(TeX-add-style-hook
 "manuscript_outliers_Santos_2020"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("elsarticle" "review" "3p")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem") ("babel" "english") ("mathabx" "matha" "mathb")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
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
    "sec:org61e882d"
    "sec:orgdd86dd8"
    "sec:orgdc85ee1"
    "fig:failure2sd"
    "sec:org8d60cd1"
    "eq:formula_loc_scale_univ"
    "tab:comparison_loc_scale_methods"
    "sec:org63c24d9"
    "sec:org954d502"
    "eq:boxplot"
    "sec:org1ebc125"
    "eq:adjusted_boxplot"
    "sec:org330a47a"
    "fig:asymGiza"
    "sec:org5c621ba"
    "sec:orgc8ef291"
    "eq:maha"
    "fig:plot3d_Sayala"
    "fig:stripcharts-maha"
    "sec:org022a2d6"
    "fig:anomaly_scores_sayala"
    "sec:orgdbd415d"
    "fig:anomaly_scores_dsp2"
    "fig:ddc_dsp2"
    "sec:org168b958"
    "sec:orgbc459ac"
    "fig:type_outliers_reg"
    "fig:robust-corr"
    "fig:robust-regression"
    "sec:orgcc3be07"
    "fig:bagplot"
    "sec:orgd04f645"
    "sec:org924e763"
    "sec:orgfc1c6cf"
    "sec:orgda6ddf4"
    "appendix:rob-scale-estimate"
    "sec:orgf0093e7"
    "sec:org1ce33e9"
    "eq:mad"
    "sec:org790b7fb"
    "eq:sn"
    "sec:orgb51d230"
    "appendix:robust-maha"
    "eq:robust_maha"
    "sec:org74a2f76"
    "appendix:r-packages")
   (LaTeX-add-bibliographies
    "complete_biblio"))
 :latex)

