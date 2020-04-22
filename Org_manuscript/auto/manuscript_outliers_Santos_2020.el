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
    "sec:org534ef60"
    "sec:org406f1cb"
    "sec:orga13ebdc"
    "fig:failure2sd"
    "sec:org2173059"
    "eq:formula_loc_scale_univ"
    "tab:comparison_loc_scale_methods"
    "sec:orga7a8f5a"
    "sec:org7c60582"
    "eq:boxplot"
    "sec:org1c75aff"
    "eq:adjusted_boxplot"
    "sec:orge624639"
    "fig:asymGiza"
    "sec:orga35b996"
    "sec:orga9d3475"
    "eq:maha"
    "fig:plot3d_Sayala"
    "fig:stripcharts-maha"
    "sec:org2e38b7b"
    "fig:anomaly_scores_sayala"
    "sec:org3c06ae1"
    "fig:anomaly_scores_dsp2"
    "fig:ddc_dsp2"
    "sec:orgd80d2a9"
    "sec:org1030f35"
    "fig:type_outliers_reg"
    "fig:robust-corr"
    "fig:robust-regression"
    "sec:orgc3c4046"
    "fig:bagplot"
    "sec:orgeff613f"
    "sec:org6f90b4f"
    "sec:org51abc33"
    "sec:org963bbfb"
    "appendix:rob-scale-estimate"
    "sec:org993841e"
    "sec:orgb39db00"
    "eq:mad"
    "sec:org51a4785"
    "eq:sn"
    "sec:org310f31d"
    "appendix:robust-maha"
    "eq:robust_maha"
    "sec:orge172cf9"
    "appendix:r-packages")
   (LaTeX-add-bibliographies
    "complete_biblio"))
 :latex)

