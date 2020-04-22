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
    "sec:org8954b8b"
    "sec:org35a6115"
    "sec:org1e9dbb9"
    "fig:failure2sd"
    "sec:orgd55d15a"
    "eq:formula_loc_scale_univ"
    "tab:comparison_loc_scale_methods"
    "sec:org13f4025"
    "sec:orgc3132a8"
    "eq:boxplot"
    "sec:org1b33774"
    "eq:adjusted_boxplot"
    "sec:org4e40fb1"
    "fig:asymGiza"
    "sec:org522c7f5"
    "sec:org7d11427"
    "eq:maha"
    "fig:plot3d_Sayala"
    "fig:stripcharts-maha"
    "sec:org8d6eb10"
    "fig:anomaly_scores_sayala"
    "sec:orgfe1f314"
    "fig:anomaly_scores_dsp2"
    "fig:ddc_dsp2"
    "sec:orgf97fdef"
    "sec:org1e2a574"
    "fig:type_outliers_reg"
    "fig:robust-corr"
    "fig:robust-regression"
    "sec:org63e70b7"
    "fig:bagplot"
    "sec:org371e8f2"
    "sec:org9660377"
    "sec:orga0767ce"
    "sec:org97efaa0"
    "appendix:rob-scale-estimate"
    "sec:org3302acc"
    "sec:orgc66d50b"
    "eq:mad"
    "sec:org55dec77"
    "eq:sn"
    "sec:org1dc6fc2"
    "appendix:robust-maha"
    "eq:robust_maha"
    "sec:org19716a7"
    "appendix:r-packages")
   (LaTeX-add-bibliographies
    "complete_biblio"))
 :latex)

