; ~/.emacs.d/init/kb-loadpackages.el

;; Add repositories and install some missing packages without use-package:
;; use-package, color-theme-sanityinc-tomorrow, planet-theme, solarized-theme,
;; zenburn-theme
(load "~/.emacs.d/init/kb-packages.el")

;; Require use-package that simplifies packages configuration
(require 'use-package)

;;; Packages installed with use-package:
;; ido-vertical-mode, fill-column-indicator, company, irony, company-irony,
;; flycheck, avy, yasnippet

;; IDO-VERTICAL-MODE  ==========================================================
(require 'ido-vertical-mode)
(when (fboundp 'ido-vertical-mode) (ido-vertical-mode 1))

;; FILL-COLUMN-INDICATOR  ======================================================
;;; add a vertical line at a specific line to show margins of the page
(use-package fill-column-indicator
             :ensure t
	     :init
	     (hook-into-modes #'(lambda () (fci-mode 1) (setq-default
							 fci-rule-column 80))
			      '(emacs-lisp-mode-hook
				vhdl-mode-hook
				verilog-mode-hook
				python-mode-hook
				c-mode-hook
				c++-mode-hook
				ruby-mode-hook))
	     (hook-into-modes #'(lambda () (fci-mode 1) (setq-default
							 fci-rule-column 120))
			      '(org-mode-hook)))

;; COMPANY =====================================================================
;;; Complete anything! Provides a popup menu with suggestions for many languages
;;; 2 characters for popup suggestion and show options numbers
(use-package company
  :ensure t
  :defer t
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  :config
  (setq company-minimum-prefix-length 2
	company-show-numbers          t))

;; IRONY =======================================================================
;;; minor mode with smart autocompletion for C, C++ and Objective-C
 (use-package irony
   :defer t
   :config
   (add-hook 'c++-mode-hook  'irony-mode)
   (add-hook 'c-mode-hook    'irony-mode)
   (add-hook 'objc-mode-hook 'irony-mode)
   ;; replace the `completion-at-point' and `complete-symbol' bindings in
   ;; irony-mode's buffers by irony-mode's function
   (defun my-irony-mode-hook ()
     (define-key irony-mode-map [remap completion-at-point]
       'irony-completion-at-point-async)
     (define-key irony-mode-map [remap complete-symbol]
       'irony-completion-at-point-async))
   (add-hook 'irony-mode-hook 'my-irony-mode-hook)
   (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options))

;; COMPANY-IRONY ===============================================================
;;; company-mode asynchronous completion backend for C, C++ and Objective-C
(use-package company-irony
   :ensure t
   :defer t
   :config
   (eval-after-load 'company '(add-to-list 'company-backends 'company-irony)))

;; FLYCHECK ====================================================================
;;; synthax checking extension for 30 programming languages
;;; be sure to have updated versions of gcc & co!
(use-package flycheck
   :ensure t
   :no-require t
   :config
   (add-hook 'after-init-hook #'global-flycheck-mode))

;; AVY  ========================================================================
;;; let you jump to specific words with "M-g w"
(use-package avy
  :ensure t
  :defer t
  :init
  (avy-setup-default)
  :config
  (setq avy-style 'at-full avy-background t)
  :bind
  ("M-g w" . avy-goto-word-1))

;; YASNIPPET  ==================================================================
(use-package yasnippet
  :ensure t
  :diminish yas-minor-mode
  :commands (yas-minor-mode yas-expand)
  :init
  (hook-into-modes #'(lambda () (yas-minor-mode t))
		   '(emacs-lisp-mode-hook
		     vhdl-mode-hook
		     verilog-mode-hook
		     python-mode-hook
		     c-mode-hook
		     c++-mode-hook
		     ruby-mode-hook))
  :config
  (setq yas-snippet-dirs "~/.emacs.d/elpa/yasnippet-20151212.2133/snippets")
;  (yas-reload-all)
  )

;; MAGIT =======================================================================

;; theme selection =============================================================
;(load-theme 'apropospriate-dark t) ;spacemacs background
(load-theme 'sanityinc-tomorrow-night t) ;dark blue background
