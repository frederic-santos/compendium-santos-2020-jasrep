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
    "sec:org8218ead"
    "sec:org6fbce3d"
    "sec:org161344f"
    "fig:failure2sd"
    "sec:orga8e1e1c"
    "eq:formula_loc_scale_univ"
    "tab:comparison_loc_scale_methods"
    "sec:org443472e"
    "sec:org853dd8a"
    "eq:boxplot"
    "sec:org5f82b6b"
    "eq:adjusted_boxplot"
    "sec:org7f2538e"
    "fig:asymGiza"
    "sec:orgd746780"
    "sec:orgf520eb5"
    "eq:maha"
    "fig:plot3d_Sayala"
    "fig:stripcharts-maha"
    "sec:org992d66a"
    "fig:anomaly_scores_sayala"
    "sec:orgaed3fc8"
    "fig:anomaly_scores_dsp2"
    "fig:ddc_dsp2"
    "sec:orge46c285"
    "sec:org8da8a69"
    "fig:type_outliers_reg"
    "fig:robust-corr"
    "fig:robust-regression"
    "sec:org1db6764"
    "fig:bagplot"
    "sec:orgc3fc45f"
    "sec:org6059696"
    "sec:orga983a94"
    "sec:orga89dd09"
    "appendix:rob-scale-estimate"
    "sec:orgac0deb6"
    "sec:org94fdbff"
    "eq:mad"
    "sec:org6a8fa17"
    "eq:sn"
    "sec:org8afedc4"
    "appendix:robust-maha"
    "eq:robust_maha"
    "sec:org1f54a76"
    "appendix:r-packages")
   (LaTeX-add-bibliographies
    "complete_biblio"))
 :latex)

