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
    "sec:orge176c7f"
    "sec:orgc0786d0"
    "sec:org69f6df2"
    "fig:failure2sd"
    "sec:orgd533d4d"
    "eq:formula_loc_scale_univ"
    "tab:comparison_loc_scale_methods"
    "sec:orgaa62cca"
    "sec:orgbec4f4d"
    "eq:boxplot"
    "sec:org3c72faf"
    "eq:adjusted_boxplot"
    "sec:org8b274f6"
    "fig:asymGiza"
    "sec:org2721e40"
    "sec:org2a0352a"
    "eq:maha"
    "fig:plot3d_Sayala"
    "fig:stripcharts-maha"
    "sec:org584d0ab"
    "fig:anomaly_scores_sayala"
    "sec:orge438ad0"
    "fig:anomaly_scores_dsp2"
    "fig:ddc_dsp2"
    "sec:orgbc379e4"
    "sec:org2200d80"
    "fig:type_outliers_reg"
    "fig:robust-corr"
    "fig:robust-regression"
    "sec:orga3efc66"
    "fig:bagplot"
    "sec:org68e33fc"
    "sec:org0eadf55"
    "sec:org98eaa5a"
    "sec:org9a6bc15"
    "appendix:rob-scale-estimate"
    "sec:orgd4f0cbf"
    "sec:orgb8d036a"
    "eq:mad"
    "sec:org249c8d0"
    "eq:sn"
    "sec:org41bd8cd"
    "appendix:robust-maha"
    "eq:robust_maha"
    "sec:org3961877"
    "appendix:r-packages")
   (LaTeX-add-bibliographies
    "complete_biblio"))
 :latex)

