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
    "sec:orgbec3d49"
    "sec:orgc3aad01"
    "sec:org5067527"
    "fig:failure2sd"
    "sec:org0ac4538"
    "eq:formula_loc_scale_univ"
    "tab:comparison_loc_scale_methods"
    "sec:org2b0c279"
    "sec:org9f61fdc"
    "eq:boxplot"
    "sec:org0e5b08a"
    "eq:adjusted_boxplot"
    "sec:org1dc072e"
    "fig:asymGiza"
    "sec:orgabbf6d5"
    "sec:org2da4bff"
    "eq:maha"
    "fig:plot3d_Sayala"
    "fig:stripcharts-maha"
    "sec:orgcdceb5a"
    "fig:anomaly_scores_sayala"
    "sec:org3f5ba5b"
    "fig:anomaly_scores_dsp2"
    "fig:ddc_dsp2"
    "sec:orga15fa61"
    "sec:orge3ac57a"
    "fig:type_outliers_reg"
    "fig:robust-corr"
    "fig:robust-regression"
    "sec:orgd1d5114"
    "fig:bagplot"
    "sec:org882308d"
    "sec:org00ce29c"
    "sec:orgecda4d2"
    "sec:orgb61e33e"
    "appendix:rob-scale-estimate"
    "sec:orgce81bbc"
    "sec:org9f3b3b5"
    "eq:mad"
    "sec:orgd38070d"
    "eq:sn"
    "sec:org5f722fa"
    "appendix:robust-maha"
    "eq:robust_maha"
    "sec:org65fb43f"
    "appendix:r-packages")
   (LaTeX-add-bibliographies
    "complete_biblio"))
 :latex)

