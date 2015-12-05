; ~/.emacs.d/init/kb-key-bindings.el

;; General
(global-set-key (kbd "<f1>") 'linum-mode)

;; Wind Move
(global-set-key (kbd "C-<left>" ) 'windmove-left)
(global-set-key (kbd "C-<right>") 'windmove-right)
(global-set-key (kbd "C-<up>"   ) 'windmove-up)
(global-set-key (kbd "C-<down>" ) 'windmove-down)

;; Actions
(global-set-key (kbd "C-x e"  ) 'eval-buffer   )
(global-set-key (kbd "C-c C-c") 'comment-region)
