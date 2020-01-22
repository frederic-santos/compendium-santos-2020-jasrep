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
    "sec:orgdcc713c"
    "sec:org7d839bf"
    "sec:orgb30cad3"
    "fig:failure2sd"
    "sec:org529599a"
    "eq:formula_loc_scale_univ"
    "tab:comparison_loc_scale_methods"
    "sec:orgf6b9c01"
    "sec:org8ae0b06"
    "eq:boxplot"
    "sec:orgff7f9bc"
    "eq:adjusted_boxplot"
    "sec:org1ef0dd9"
    "fig:asymGiza"
    "sec:orgc2b09ee"
    "sec:orgcbd17da"
    "eq:maha"
    "fig:plot3d_Sayala"
    "fig:stripcharts-maha"
    "sec:org4d62dd0"
    "fig:anomaly_scores_sayala"
    "sec:orgc8e1fc9"
    "fig:anomaly_scores_dsp2"
    "fig:ddc_dsp2"
    "sec:orgee5949b"
    "sec:org093a091"
    "fig:type_outliers_reg"
    "fig:robust-corr"
    "fig:robust-regression"
    "sec:org74165f4"
    "fig:bagplot"
    "sec:org7e90ad8"
    "sec:org020f1b5"
    "sec:orgff7b787"
    "sec:org1beeccb"
    "appendix:rob-scale-estimate"
    "sec:org77e2cf0"
    "sec:org9c27364"
    "eq:mad"
    "sec:org3506a35"
    "eq:sn"
    "sec:org8a30bac"
    "appendix:robust-maha"
    "eq:robust_maha"
    "sec:orgf2f3be7"
    "appendix:r-packages")
   (LaTeX-add-bibliographies
    "../../../../../complete_biblio"))
 :latex)

