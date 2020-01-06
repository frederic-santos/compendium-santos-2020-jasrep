;;; Commentary:
;;; This init file is a companion to allow the full reproducibility
;;; of the results from Santos 2019, Journal of Archaeological: Reports.

;; Set repository information:
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
(package-refresh-contents)

;; Install and activate use-package (if not already the case):
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

;; General Emacs settings:
(setq inhibit-splash-screen t)
(global-display-line-numbers-mode)
(global-hl-line-mode t)
(setq-default word-wrap t)
(toggle-truncate-lines -1)
(setq longlines-wrap-follows-window-size t)

;; Use UTF-8 encoding:
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Allow Emacs to execute lisp code in the current directory:
(add-to-list 'load-path "./")

;; Load Emacs Speaks Statistics:
(use-package ess
  :ensure t
  :init
  (require 'ess-site)
  :config
  ;; Remove Flymake
  (setq ess-use-flymake nil))

(use-package org
  :ensure t
  :init
  (defun turn-on-visual-line-mode () (visual-line-mode 1)) ;; Lisp function used below
  :config
  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; General Org-mode settings:
  (setq org-src-fontify-natively t)
  (setq org-src-tab-acts-natively t)
  (setq org-pretty-entities t)      
  (add-hook 'org-mode-hook 'turn-on-visual-line-mode)
  ;; Enable support for "ignore" tag:
  (require 'ox-extra)
  (ox-extras-activate '(ignore-headlines))
  ;; Settings for LaTeX export:
  (setq org-latex-pdf-process (list "latexmk -bibtex -f -pdf %f"))
  (setq org-latex-caption-above nil)
  (setq org-export-with-smart-quotes t) ;; for smart quotes in LaTeX export (with babel packages)
  ;; Add Elsevier class:
  (add-to-list 'org-latex-classes
	       '("elsarticle"
		 "\\documentclass{elsarticle}"
		 ("\\section{%s}" . "\\section*{%s}")
		 ("\\subsection{%s}" . "\\subsection*{%s}")
		 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))
  ;; ;;;;;;;;;;;;;;;
  ;; Babel settings:
  ;; Supported languages:
  (org-babel-do-load-languages
   'org-babel-load-languages
   '(
     (latex . t)
     (R . t)
     ))
  ;; Do not ask for conformation each time the document is exported:
  (setq org-confirm-babel-evaluate nil)
  ;; Preserve indentation:
  (setq org-src-preserve-indentation t)
  ;; Inline display of figures:
  (add-hook 'org-babel-after-execute-hook 'org-display-inline-images) 
  (add-hook 'org-mode-hook 'org-display-inline-images))

;; Use org-ref to handle bibliography:
(use-package org-ref
  :ensure t
  :after org)

;; Also use paren package (for greater comfort in inspecting source code):
(use-package paren
  :ensure t
  :config
  (setq show-paren-delay 0)
  (show-paren-mode 1))

;; LaTeX configuration:
(use-package tex
  :ensure auctex
  :init
  (defun tex-pdf-on () (TeX-PDF-mode 1))
  (defun auto-fill-mode-on () (auto-fill-mode 1))
  :config
  ;; Some settings recommended by AucTeX online manual:
  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
  (setq-default TeX-master nil)
  ;; Turn on PDF mode by default:
  (add-hook 'tex-mode-hook 'tex-pdf-on)
  (add-hook 'latex-mode-hook 'tex-pdf-on)
  (setq TeX-PDF-mode t))
