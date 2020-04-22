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
    "sec:org986d730"
    "sec:org1355462"
    "sec:org8a37279"
    "fig:failure2sd"
    "sec:org0cc3216"
    "eq:formula_loc_scale_univ"
    "tab:comparison_loc_scale_methods"
    "sec:orgecb28ac"
    "sec:orgcbfb995"
    "eq:boxplot"
    "sec:org67de3eb"
    "eq:adjusted_boxplot"
    "sec:orgbda6c4e"
    "fig:asymGiza"
    "sec:org7a5ec13"
    "sec:orgbb2ee24"
    "eq:maha"
    "fig:plot3d_Sayala"
    "fig:stripcharts-maha"
    "sec:org8af326f"
    "fig:anomaly_scores_sayala"
    "sec:org6b3543f"
    "fig:anomaly_scores_dsp2"
    "fig:ddc_dsp2"
    "sec:org3524ed1"
    "sec:org3f392cb"
    "fig:type_outliers_reg"
    "fig:robust-corr"
    "fig:robust-regression"
    "sec:orga0d2417"
    "fig:bagplot"
    "sec:orgdb198e6"
    "sec:orge949945"
    "sec:org879520a"
    "sec:org2e23767"
    "appendix:rob-scale-estimate"
    "sec:org4d48b82"
    "sec:orgd995aaf"
    "eq:mad"
    "sec:orgb56e51a"
    "eq:sn"
    "sec:orga54e400"
    "appendix:robust-maha"
    "eq:robust_maha"
    "sec:orge30deb5"
    "appendix:r-packages")
   (LaTeX-add-bibliographies
    "complete_biblio"))
 :latex)

