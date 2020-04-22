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
    "sec:orgec9fe92"
    "sec:org6f68218"
    "sec:orga310073"
    "fig:failure2sd"
    "sec:org2e80f34"
    "eq:formula_loc_scale_univ"
    "tab:comparison_loc_scale_methods"
    "sec:org31d6bcc"
    "sec:org9b03779"
    "eq:boxplot"
    "sec:orgb51fdcd"
    "eq:adjusted_boxplot"
    "sec:orgc1dc11b"
    "fig:asymGiza"
    "sec:orgc98189f"
    "sec:org5e57b50"
    "eq:maha"
    "fig:plot3d_Sayala"
    "fig:stripcharts-maha"
    "sec:org02aec8a"
    "fig:anomaly_scores_sayala"
    "sec:org9bb0aa9"
    "fig:anomaly_scores_dsp2"
    "fig:ddc_dsp2"
    "sec:orgc697efe"
    "sec:org0971953"
    "fig:type_outliers_reg"
    "fig:robust-corr"
    "fig:robust-regression"
    "sec:org5f7930a"
    "fig:bagplot"
    "sec:org70b960f"
    "sec:org78e14c3"
    "sec:org3b9e3ce"
    "sec:org33a58ea"
    "appendix:rob-scale-estimate"
    "sec:org34f5189"
    "sec:org867d7aa"
    "eq:mad"
    "sec:org9af1b6a"
    "eq:sn"
    "sec:orgd1a8776"
    "appendix:robust-maha"
    "eq:robust_maha"
    "sec:orgc650735"
    "appendix:r-packages")
   (LaTeX-add-bibliographies
    "complete_biblio"))
 :latex)

