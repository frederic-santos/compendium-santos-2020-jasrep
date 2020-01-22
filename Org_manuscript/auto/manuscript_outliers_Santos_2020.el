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
    "sec:org5128f13"
    "sec:org1eecc91"
    "sec:orgaa63cdf"
    "fig:failure2sd"
    "sec:orgd633084"
    "eq:formula_loc_scale_univ"
    "tab:comparison_loc_scale_methods"
    "sec:org191010e"
    "sec:org8667a39"
    "eq:boxplot"
    "sec:org69491f5"
    "eq:adjusted_boxplot"
    "sec:orgc040711"
    "fig:asymGiza"
    "sec:orgdf0bda9"
    "sec:org365583e"
    "eq:maha"
    "fig:plot3d_Sayala"
    "fig:stripcharts-maha"
    "sec:orgd9683bc"
    "fig:anomaly_scores_sayala"
    "sec:org65e73f0"
    "fig:anomaly_scores_dsp2"
    "fig:ddc_dsp2"
    "sec:org639d3e2"
    "sec:orgff697b6"
    "fig:type_outliers_reg"
    "fig:robust-corr"
    "fig:robust-regression"
    "sec:org7fd82c4"
    "fig:bagplot"
    "sec:org38e9e47"
    "sec:org3f0e7ec"
    "sec:org0f77954"
    "sec:org8e46ced"
    "appendix:rob-scale-estimate"
    "sec:org95dffd7"
    "sec:orgf1c1fdd"
    "eq:mad"
    "sec:org1988680"
    "eq:sn"
    "sec:org40d45f0"
    "appendix:robust-maha"
    "eq:robust_maha"
    "sec:org0eb5586"
    "appendix:r-packages")
   (LaTeX-add-bibliographies
    "complete_biblio"))
 :latex)

