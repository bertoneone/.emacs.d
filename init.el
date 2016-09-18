; ~/.emacs.d/init.el

;; Functions and Macros ========================================================

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load "~/.emacs.d/init/kb-macro-func.el")

;; Packages ====================================================================
(load "~/.emacs.d/init/kb-loadpackages.el")

;; Init files ==================================================================
;;; Execute files with changes to the "native" emacs and key-bindings
;;; hook at the end to avoid conflicts with external modules
(add-hook 'after-init-hook '(lambda ()
  (load "~/.emacs.d/init/kb-native-mod.el")
  (load "~/.emacs.d/init/kb-key-bindings.el")
))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(custom-safe-themes
   (quote
    ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "5a0eee1070a4fc64268f008a4c7abfda32d912118e080e18c3c865ef864d1bea" default)))
 '(fci-rule-color "#373b41")
 '(package-selected-packages
   (quote
    (yasnippet avy flycheck company-irony company fill-column-indicator apropospriate-theme zenburn-theme solarized-theme planet-theme color-theme-sanityinc-tomorrow ido-vertical-mode use-package)))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#cc6666")
     (40 . "#de935f")
     (60 . "#f0c674")
     (80 . "#b5bd68")
     (100 . "#8abeb7")
     (120 . "#81a2be")
     (140 . "#b294bb")
     (160 . "#cc6666")
     (180 . "#de935f")
     (200 . "#f0c674")
     (220 . "#b5bd68")
     (240 . "#8abeb7")
     (260 . "#81a2be")
     (280 . "#b294bb")
     (300 . "#cc6666")
     (320 . "#de935f")
     (340 . "#f0c674")
     (360 . "#b5bd68"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
