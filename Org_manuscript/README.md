An Org source file to reproduce the whole manuscript
====================================================

In search for a perfect reproducibility, this manuscript have been entirely written in [Org mode for Emacs](https://orgmode.org/). The files provided in this folder should allow to rebuild the whole manuscript, in its exact form at the moment of the submission to the *Journal of Archaeological Science: Reports*. All R scripts will be re-evaluated during this process, and the R code chunks can also been evaluated manually in the Org source file.

The following instructions should work on a Linux system, and have not been tested on other OS.

## Prerequisites

1. Please make sure that R and all the required packages are installed. See [here](https://gitlab.com/f.santos/reproducibility-package-for-santos-2019-jasr/blob/master/README.md) for a complete list and detailed instructions.

2. A complete distribution of LaTeX must be available on your computer. In particular, specific packages for scientific edition, generally grouped under the name `texlive-publishers` with most Linux distributions, will be necessary. The package `mbboard` used within the manuscript is not always part of LaTeX distributions but is available [here](https://www.ctan.org/pkg/mbboard). Since it is not essential to the manuscript (it only prettyfies some mathematical fonts), the corresponding line in the Org file can simply be removed if you do not want (or do not manage) to use it.

3. The last version of [Emacs](https://www.gnu.org/software/emacs/) is required.

## Steps to follow

1. Unzip the whole folder in your computer.

2. Open a terminal and set this folder as the working directory. Then enter the following command into the shell:

		emacs -q -l init_Santos2019.el manuscript_outliers_Santos_2019.org
	
3. Emacs should open, eventually install the missing Lisp packages, and finally execute a minimal init file. The org source file should show up.

4. Finally, execute the following keybinding (with the Emacs window on the foreground): `C-c C-e l p` (i.e., `Ctrl-c Ctrl-e l p`). Then press enter to accept the default value of the R working directory.

5. A pdf file should be created as a result in the working directory.

## Disclaimer

1. Some files in this repository (e.g., `ox-extra.el` and `model5-names.bst`) are the property of their respective authors. They have made freely available by their authors, and are simply provided here for a greater ease of use.

2. If the previous steps do not work on your computer, feel free to contact me.
