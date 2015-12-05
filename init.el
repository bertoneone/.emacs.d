; ~/.emacs.d/init.el

;; Execute file with changes to the "native" emacs
; hook at the end to avoid conflicts with external modules
(add-hook 'after-init-hook '(lambda ()
  (load "~/.emacs.d/init/kb-native-mod.el")
  (load "~/.emacs.d/init/kb-key-bindings.el")
))
