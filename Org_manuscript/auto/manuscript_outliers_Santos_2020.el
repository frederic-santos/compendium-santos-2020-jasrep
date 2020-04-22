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
    "sec:org3e98827"
    "sec:org6c3eda5"
    "sec:orgcec9a68"
    "fig:failure2sd"
    "sec:org9e6f7f3"
    "eq:formula_loc_scale_univ"
    "tab:comparison_loc_scale_methods"
    "sec:org4828619"
    "sec:org57b2ae3"
    "eq:boxplot"
    "sec:org9ecfc9d"
    "eq:adjusted_boxplot"
    "sec:orgd824f1f"
    "fig:asymGiza"
    "sec:org316db35"
    "sec:orgac5d81d"
    "eq:maha"
    "fig:plot3d_Sayala"
    "fig:stripcharts-maha"
    "sec:org0fab9ba"
    "fig:anomaly_scores_sayala"
    "sec:org5767187"
    "fig:anomaly_scores_dsp2"
    "fig:ddc_dsp2"
    "sec:org65c2e92"
    "sec:org7548654"
    "fig:type_outliers_reg"
    "fig:robust-corr"
    "fig:robust-regression"
    "sec:orge9da3e7"
    "fig:bagplot"
    "sec:orgd6c61f0"
    "sec:org656ba35"
    "sec:orga1a2506"
    "sec:orga7c4c20"
    "appendix:rob-scale-estimate"
    "sec:orgc040acf"
    "sec:org31b95c3"
    "eq:mad"
    "sec:orgb6f30f4"
    "eq:sn"
    "sec:orgb3d365e"
    "appendix:robust-maha"
    "eq:robust_maha"
    "sec:org10fec08"
    "appendix:r-packages")
   (LaTeX-add-bibliographies
    "complete_biblio"))
 :latex)

