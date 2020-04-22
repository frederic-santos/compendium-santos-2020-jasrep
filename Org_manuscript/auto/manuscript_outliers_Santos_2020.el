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
    "sec:org60eea6d"
    "sec:org16f1ad0"
    "sec:orgf5b90a2"
    "fig:failure2sd"
    "sec:org272dae1"
    "eq:formula_loc_scale_univ"
    "tab:comparison_loc_scale_methods"
    "sec:org467c94f"
    "sec:org2cd2be0"
    "eq:boxplot"
    "sec:orgf62579e"
    "eq:adjusted_boxplot"
    "sec:org94228f6"
    "fig:asymGiza"
    "sec:orgba10fee"
    "sec:org51a0f2b"
    "eq:maha"
    "fig:plot3d_Sayala"
    "fig:stripcharts-maha"
    "sec:org15cb657"
    "fig:anomaly_scores_sayala"
    "sec:orgca385e0"
    "fig:anomaly_scores_dsp2"
    "fig:ddc_dsp2"
    "sec:org6f65ed1"
    "sec:org51ffa94"
    "fig:type_outliers_reg"
    "fig:robust-corr"
    "fig:robust-regression"
    "sec:orgfbee468"
    "fig:bagplot"
    "sec:orge2f06ff"
    "sec:org1fdbf6b"
    "sec:org93d9779"
    "sec:org2d590e2"
    "appendix:rob-scale-estimate"
    "sec:org3ab621b"
    "sec:org9ca9eb5"
    "eq:mad"
    "sec:orgddb778d"
    "eq:sn"
    "sec:orgf07dba9"
    "appendix:robust-maha"
    "eq:robust_maha"
    "sec:orge52a0a7"
    "appendix:r-packages")
   (LaTeX-add-bibliographies
    "complete_biblio"))
 :latex)

