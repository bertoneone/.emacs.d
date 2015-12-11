; ~/.emacs.d/init/kb-loadpackages.el

;; Install missing packages
(load "~/.emacs.d/init/kb-packages.el")

;; Require use-package that simplifies packages configuration
(require 'use-package)

;; ido-vertical-mode  ==========================================================
(require 'ido-vertical-mode)
(when (fboundp 'ido-vertical-mode) (ido-vertical-mode 1))

;; fill-column-indicator  ======================================================
(use-package fill-column-indicator
	     :init
	     (hook-into-modes #'(lambda () (fci-mode 1) (setq-default
							 fci-rule-column 80))
			      '(emacs-lisp-mode-hook
				python-mode-hook
				c-mode-hook
				c++mode-hook
				ruby-mode-hook))
	     (hook-into-modes #'(lambda () (fci-mode 1) (setq-default
							 fci-rule-column 120))
			      '(org-mode-hook))
	     )

;; theme selection =============================================================
(load-theme 'sanityinc-tomorrow-night t) ;dark blue background

;; TBD  ==========================================================
