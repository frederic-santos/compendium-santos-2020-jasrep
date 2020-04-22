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
    "sec:org04afe1a"
    "sec:org6942267"
    "sec:org3925ec5"
    "fig:failure2sd"
    "sec:org329915a"
    "eq:formula_loc_scale_univ"
    "tab:comparison_loc_scale_methods"
    "sec:orgf2ce743"
    "sec:orgf0bc093"
    "eq:boxplot"
    "sec:org208ba1c"
    "eq:adjusted_boxplot"
    "sec:orge643b09"
    "fig:asymGiza"
    "sec:org1c99ded"
    "sec:org6fcccf1"
    "eq:maha"
    "fig:plot3d_Sayala"
    "fig:stripcharts-maha"
    "sec:org58e800f"
    "fig:anomaly_scores_sayala"
    "sec:org188965f"
    "fig:anomaly_scores_dsp2"
    "fig:ddc_dsp2"
    "sec:org1dc4d88"
    "sec:org28756a5"
    "fig:type_outliers_reg"
    "fig:robust-corr"
    "fig:robust-regression"
    "sec:org6a94496"
    "fig:bagplot"
    "sec:org893bcdd"
    "sec:orge8b9a81"
    "sec:org792dd21"
    "sec:orgb0cc4fe"
    "appendix:rob-scale-estimate"
    "sec:orgc1f3a96"
    "sec:org1fa0f2d"
    "eq:mad"
    "sec:org3505375"
    "eq:sn"
    "sec:org555d4b9"
    "appendix:robust-maha"
    "eq:robust_maha"
    "sec:org9d4268f"
    "appendix:r-packages")
   (LaTeX-add-bibliographies
    "complete_biblio"))
 :latex)

