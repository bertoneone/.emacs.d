; ~/.emacs.d/init/kb-loadpackages.el

;; Install missing packages
(load "~/.emacs.d/init/kb-packages.el")

;; ido-vertical-mode  ==========================================================
(require 'ido-vertical-mode)
(when (fboundp 'ido-vertical-mode) (ido-vertical-mode 1))

;; fill-column-indicator  ======================================================
(require 'fill-column-indicator)
(setq-default fill-column 80)
