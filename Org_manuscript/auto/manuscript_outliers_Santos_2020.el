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
    "sec:org19b1008"
    "sec:orgf605f17"
    "sec:orga725c30"
    "fig:failure2sd"
    "sec:orgbd550e3"
    "eq:formula_loc_scale_univ"
    "tab:comparison_loc_scale_methods"
    "sec:org5775752"
    "sec:org4c5fda6"
    "eq:boxplot"
    "sec:org476a2b9"
    "eq:adjusted_boxplot"
    "sec:org5c38971"
    "fig:asymGiza"
    "sec:org1da706c"
    "sec:org36c8938"
    "eq:maha"
    "fig:plot3d_Sayala"
    "fig:stripcharts-maha"
    "sec:orgea3084d"
    "fig:anomaly_scores_sayala"
    "sec:orgab5d332"
    "fig:anomaly_scores_dsp2"
    "fig:ddc_dsp2"
    "sec:org14d3bab"
    "sec:orga3455a6"
    "fig:type_outliers_reg"
    "fig:robust-corr"
    "fig:robust-regression"
    "sec:orgfeb2fd3"
    "fig:bagplot"
    "sec:org4126c1f"
    "sec:orgc139342"
    "sec:orge1d2aea"
    "sec:org1ad4100"
    "appendix:rob-scale-estimate"
    "sec:org70036d2"
    "sec:org071c3d4"
    "eq:mad"
    "sec:org319adf2"
    "eq:sn"
    "sec:orgbeb3093"
    "appendix:robust-maha"
    "eq:robust_maha"
    "sec:org8c978ab"
    "appendix:r-packages")
   (LaTeX-add-bibliographies
    "complete_biblio"))
 :latex)

