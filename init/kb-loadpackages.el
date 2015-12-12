; ~/.emacs.d/init/kb-loadpackages.el

;; Install missing packages
(load "~/.emacs.d/init/kb-packages.el")

;; Require use-package that simplifies packages configuration
(require 'use-package)

;; IDO-VERTICAL-MODE  ==========================================================
(require 'ido-vertical-mode)
(when (fboundp 'ido-vertical-mode) (ido-vertical-mode 1))

;; FILL-COLUMN-INDICATOR  ======================================================
;;; add a vertical line at a specific line to show margins of the page
(use-package fill-column-indicator
	     :init
	     (hook-into-modes #'(lambda () (fci-mode 1) (setq-default
							 fci-rule-column 80))
			      '(emacs-lisp-mode-hook
				vhdl-mode-hook
				verilog-mode-hook
				python-mode-hook
				c-mode-hook
				c++mode-hook
				ruby-mode-hook))
	     (hook-into-modes #'(lambda () (fci-mode 1) (setq-default
							 fci-rule-column 120))
			      '(org-mode-hook))
	     )

;; COMPANY =====================================================================
;;; Complete anything! Provides a popup menu with suggestions for many languages
;;; 2 characters for popup suggestion and show options numbers
(use-package company
  :defer t
  :init (add-hook 'after-init-hook 'global-company-mode)
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
   :defer t
   :config
   (eval-after-load 'company '(add-to-list 'company-backends 'company-irony)))

;; FLYCHECK ====================================================================
;;; synthax checking extension for 30 programming languages
;;; be sure to have updated versions of gcc & co!
 (use-package flycheck
   :no-require t
   :config
   (add-hook 'after-init-hook #'global-flycheck-mode))

;; YASNIPPET  ==================================================================

;; theme selection =============================================================
(load-theme 'sanityinc-tomorrow-night t) ;dark blue background
