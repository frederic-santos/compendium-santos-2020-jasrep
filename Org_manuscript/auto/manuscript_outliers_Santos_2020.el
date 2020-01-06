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
    "sec:orgeed441b"
    "sec:org6cd6a96"
    "sec:org3f437ab"
    "fig:org403d450"
    "sec:orgca31c46"
    "eq:formula_loc_scale_univ"
    "sec:org52409e3"
    "sec:orgd78e471"
    "eq:mad"
    "sec:orgcd6faef"
    "eq:sn"
    "sec:orgc851503"
    "tab:org3e63403"
    "sec:orgee27047"
    "sec:orgf7c5259"
    "eq:boxplot"
    "sec:org817fcdc"
    "eq:adjusted_boxplot"
    "sec:orga8d2337"
    "fig:org47184de"
    "sec:orga619d44"
    "sec:orgfddc5ae"
    "eq:maha"
    "eq:robust_maha"
    "fig:org5a644e9"
    "fig:org30b0333"
    "sec:org2ca74d0"
    "fig:org5505cf5"
    "sec:org96f6bee"
    "sec:org82f27cd"
    "fig:org2655a96"
    "fig:orgbcf90ca"
    "fig:org1ed38d9"
    "sec:org10fb522"
    "fig:org501e243"
    "sec:org2d38802"
    "sec:org21fac4e"
    "sec:orgf117676")
   (LaTeX-add-bibliographies
    "../../../../../complete_biblio"))
 :latex)

