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
    "sec:org93d8cbb"
    "sec:org208212d"
    "sec:orgd37d06b"
    "fig:failure2sd"
    "sec:orge499b89"
    "eq:formula_loc_scale_univ"
    "tab:comparison_loc_scale_methods"
    "sec:orgf7bea20"
    "sec:org94ad6ec"
    "eq:boxplot"
    "sec:org195836e"
    "eq:adjusted_boxplot"
    "sec:org2492a45"
    "fig:asymGiza"
    "sec:orgfe0833e"
    "sec:org4118a9d"
    "eq:maha"
    "fig:plot3d_Sayala"
    "fig:stripcharts-maha"
    "sec:orgcfb74af"
    "fig:anomaly_scores_sayala"
    "sec:org6d7df67"
    "fig:anomaly_scores_dsp2"
    "fig:ddc_dsp2"
    "sec:org231b70a"
    "sec:org33b381b"
    "fig:type_outliers_reg"
    "fig:robust-corr"
    "fig:robust-regression"
    "sec:org6bd67fb"
    "fig:bagplot"
    "sec:org23a0e99"
    "sec:orgff8db48"
    "sec:orge2ea1e5"
    "sec:orge0a6950"
    "appendix:rob-scale-estimate"
    "sec:orgf86c0a9"
    "sec:orga464ee2"
    "eq:mad"
    "sec:org88104e4"
    "eq:sn"
    "sec:orgad0360e"
    "appendix:robust-maha"
    "eq:robust_maha"
    "sec:org961b26d"
    "appendix:r-packages")
   (LaTeX-add-bibliographies
    "complete_biblio"))
 :latex)

