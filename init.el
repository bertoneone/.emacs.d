; ~/.emacs.d/init.el

;; Functions and Macros ========================================================
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
 '(custom-safe-themes
   (quote
    ("5a0eee1070a4fc64268f008a4c7abfda32d912118e080e18c3c865ef864d1bea" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
