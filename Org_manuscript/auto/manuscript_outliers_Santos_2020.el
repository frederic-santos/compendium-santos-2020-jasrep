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
    "sec:org751dc5f"
    "sec:org70dc317"
    "sec:org0b60bcf"
    "fig:failure2sd"
    "sec:orged6a194"
    "eq:formula_loc_scale_univ"
    "tab:comparison_loc_scale_methods"
    "sec:org4e477e4"
    "sec:orgd91b1dc"
    "eq:boxplot"
    "sec:orgf77f6f3"
    "eq:adjusted_boxplot"
    "sec:orgf15db7c"
    "fig:asymGiza"
    "sec:org6d7e006"
    "sec:org1000fbd"
    "eq:maha"
    "fig:plot3d_Sayala"
    "fig:stripcharts-maha"
    "sec:org48fa54b"
    "fig:anomaly_scores_sayala"
    "sec:org4b39ca2"
    "fig:anomaly_scores_dsp2"
    "fig:ddc_dsp2"
    "sec:org725f129"
    "sec:org51a1e0d"
    "fig:type_outliers_reg"
    "fig:robust-corr"
    "fig:robust-regression"
    "sec:org72e4e23"
    "fig:bagplot"
    "sec:orgccc245e"
    "sec:org942306c"
    "sec:org274bcdd"
    "sec:orgd3c68d6"
    "appendix:rob-scale-estimate"
    "sec:org36086d7"
    "sec:orga87d548"
    "eq:mad"
    "sec:orgf0437bc"
    "eq:sn"
    "sec:orga97a380"
    "appendix:robust-maha"
    "eq:robust_maha"
    "sec:orga52bee0"
    "appendix:r-packages")
   (LaTeX-add-bibliographies
    "complete_biblio"))
 :latex)

