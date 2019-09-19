(package-initialize)
(add-to-list 'package-archives
		 '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives
		 '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives 
             '("org" . "https://orgmode.org/elpa/") t)
(setq package-archive-priorities '(("gnu" . 5)
                                   ("melpa" . 10)
                                   ("org" . 11)
                                   ("melpa-stable" . 6)))

(dolist (pkg '(auctex
               company
               ess
               org-ref
               poly-org
               poly-R
               ox-pandoc
	           use-package))
  (when (not (package-installed-p pkg))
    (package-install pkg)))

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'org)
(require 'org-ref)
(require 'org-tempo)
(require 'ox-pandoc)
(require 'ox-latex)
(defun turn-on-visual-line-mode () (visual-line-mode 1))  
(add-hook 'org-mode-hook 'turn-on-visual-line-mode)

(require 'ess-site)

(setq inhibit-splash-screen t)

(global-display-line-numbers-mode)

(load-library "paren")
(setq show-paren-delay 0)
(show-paren-mode 1)
(require 'paren)

(global-hl-line-mode t)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(setq-default word-wrap t)
(toggle-truncate-lines -1)
(setq longlines-wrap-follows-window-size t)

(remove-hook 'elpy-modules 'elpy-module-flymake) ;; remove Flymake globally
(setq ess-use-flymake nil) ;; remove Flymake in ESS mode

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(defun tex-pdf-on () (TeX-PDF-mode 1))
(add-hook 'tex-mode-hook 'tex-pdf-on)
(add-hook 'latex-mode-hook 'tex-pdf-on)
(setq TeX-PDF-mode t)

(defun auto-fill-mode-on () (auto-fill-mode 1))

(setq org-latex-pdf-process (list "latexmk -bibtex -f -pdf %f"))

(setq org-latex-caption-above nil)

(setq org-hide-leading-stars nil)  ;; ne pas cacher les "*" supplémentaires des sous-sections
(setq org-alphabetical-lists t)
(setq org-src-fontify-natively t)  ;; activer la coloration syntaxique au sein des blocs
(setq org-src-tab-acts-natively t) ;; activer la complétion au sein des blocs
(setq org-pretty-entities t)       ;; permet d'avoir des caractères spéciaux (\alpha, ...)

(require 'ox-extra)
(ox-extras-activate '(ignore-headlines))


(setq org-confirm-babel-evaluate nil)
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (R . t)
   (org . t)
   ))
   
(setq org-src-preserve-indentation t)

(add-hook 'org-babel-after-execute-hook 'org-display-inline-images) 
(add-hook 'org-mode-hook 'org-display-inline-images)

(add-to-list 'org-latex-classes
             '("elsarticle"
               "\\documentclass{elsarticle}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))
