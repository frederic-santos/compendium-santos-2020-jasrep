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
    "sec:org447a965"
    "sec:org9426427"
    "sec:org3d45f2a"
    "fig:failure2sd"
    "sec:orgdcedb79"
    "eq:formula_loc_scale_univ"
    "tab:comparison_loc_scale_methods"
    "sec:orgb30ed9a"
    "sec:orgaeab040"
    "eq:boxplot"
    "sec:orgdfe886b"
    "eq:adjusted_boxplot"
    "sec:org2996fd6"
    "fig:asymGiza"
    "sec:org57f842d"
    "sec:org427aedb"
    "eq:maha"
    "fig:plot3d_Sayala"
    "fig:stripcharts-maha"
    "sec:org0dd42f0"
    "fig:anomaly_scores_sayala"
    "sec:org459b62a"
    "fig:anomaly_scores_dsp2"
    "fig:ddc_dsp2"
    "sec:org599d07d"
    "sec:orgc6c6e5b"
    "fig:type_outliers_reg"
    "fig:robust-corr"
    "fig:robust-regression"
    "sec:org3adbf15"
    "fig:bagplot"
    "sec:orge966be5"
    "sec:orge0470e9"
    "sec:org2ecabb4"
    "sec:org3a6bfce"
    "appendix:rob-scale-estimate"
    "sec:org803cc50"
    "sec:org5bb6ccf"
    "eq:mad"
    "sec:org7d1cf09"
    "eq:sn"
    "sec:org803cb15"
    "appendix:robust-maha"
    "eq:robust_maha"
    "sec:orgcb2e7f2"
    "appendix:r-packages")
   (LaTeX-add-bibliographies
    "complete_biblio"))
 :latex)

