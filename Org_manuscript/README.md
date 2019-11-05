An Org source file to reproduce the whole manuscript
====================================================

In search for a perfect reproducibility, this manuscript have been entirely written in [Org mode for Emacs](https://orgmode.org/). The files provided in this folder should allow to rebuild the whole manuscript, in its exact form at the moment of the submission to the *Journal of Archaeological Science: Reports*. All R scripts will be re-evaluated during this process, and the R code chunks can also been evaluated manually in the Org source file.

The following instructions have been mainly tested on Linux, but should work for MS Windows or Mac OS users (maybe with some additional difficulty).

## Prerequisites

1. Please make sure that R and all the required R packages are installed. See [here](https://gitlab.com/f.santos/reproducibility-package-for-santos-2019-jasr/blob/master/README.md) for a complete list and detailed instructions.

2. A complete distribution of LaTeX must be available on your computer.
   - **MS Windows users**: most Windows users prefer the [MiKTeX distribution](https://miktex.org/download). The better way is to download the *Net installer* to install a complete MiKTeX distribution, including all the packages available. If you install only a basic MiKTeX distribution, please make sure that the LaTeX package `latexmk` will be installed (this can be done downstream of the installation, through the MiKTeX package manager).
   - **Linux users**: most Linux users prefer the [texlive distribution](https://tug.org/texlive/). If your Linux distribution proposes a complete texlive distribution, it is safe to do so. For example, openSuSE users can run the following shell instruction:
	   
         sudo zypper install texlive-scheme-full
	   
      The users willing to install only a subset of LaTeX packages should at least select the packages for scientific edition, generally grouped under the names `texlive-publishers` and `texlive-science` with most Linux distributions. For example, Manjaro users can run the following shell instruction:

         sudo pacman -S texlive-publishers texlive-science

3. Perl must be installed on your computer. This programming language should be natively installed on Linux and Mac OS computers. For MS Windows users, I recommend to install [Strawberry Perl](http://strawberryperl.com/).

4. The last version of [Emacs](https://www.gnu.org/software/emacs/) is required.

5. **MS Windows users only**: please make sure that your *PATH* environment variable includes the paths towards the programs `Rterm.exe` (i.e. the `bin/` subfolder of your R installation) and `latexmk.exe` (i.e. a `bin/` subfolder of your MiKTeX installation).

## Steps to follow

1. Download and unzip the whole directory `Org_manuscript`.

2. Open a terminal and set this folder as the working directory. Then enter the following command into the shell:

         emacs -q -l init_Santos2019.el manuscript_outliers_Santos_2019.org
	
3. Emacs should open, eventually install the missing Lisp packages, and finally execute a minimal init file. The org source file should show up.

4. Finally, execute the following keybinding (with the Emacs window on the foreground): `C-c C-e l o` (i.e., `Ctrl-c Ctrl-e l o`). Then press enter to accept the default value of the R working directory.

5. The final pdf file should be displayed, and created in the working directory.

## Disclaimer

1. Some files in this repository (e.g., `ox-extra.el` and `model5-names.bst`) are the property of their respective authors. They have made freely available by their authors, and are simply provided here for a greater ease of use.

2. If the previous steps do not work on your computer, feel free to contact me.
