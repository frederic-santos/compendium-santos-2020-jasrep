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
    "sec:orgf5cd4cb"
    "sec:orga4ba6da"
    "sec:org11f7523"
    "fig:failure2sd"
    "sec:org6f01d48"
    "eq:formula_loc_scale_univ"
    "tab:comparison_loc_scale_methods"
    "sec:org5ec1c18"
    "sec:orga19b39f"
    "eq:boxplot"
    "sec:orga363865"
    "eq:adjusted_boxplot"
    "sec:org440c2a8"
    "fig:asymGiza"
    "sec:orgfa003fb"
    "sec:orgc321818"
    "eq:maha"
    "fig:plot3d_Sayala"
    "fig:stripcharts-maha"
    "sec:org7c5476a"
    "fig:anomaly_scores_sayala"
    "sec:orgfca4164"
    "fig:anomaly_scores_dsp2"
    "fig:ddc_dsp2"
    "sec:org7311246"
    "sec:org66dca5e"
    "fig:type_outliers_reg"
    "fig:robust-corr"
    "fig:robust-regression"
    "sec:orgddff104"
    "fig:bagplot"
    "sec:org8a759d9"
    "sec:org49522e5"
    "sec:orga5d0771"
    "sec:org91c46ee"
    "appendix:rob-scale-estimate"
    "sec:orgdd0de20"
    "sec:org858ba10"
    "eq:mad"
    "sec:org214cc05"
    "eq:sn"
    "sec:orgf7639f3"
    "appendix:robust-maha"
    "eq:robust_maha"
    "sec:orgecb4cf9"
    "appendix:r-packages")
   (LaTeX-add-bibliographies
    "complete_biblio"))
 :latex)

