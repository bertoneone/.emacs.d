; ~/.emacs.d/init/kb-key-bindings.el

;; General
(global-set-key (kbd "<f1>")         'linum-mode)
(global-set-key (kbd "<f3>") 'enable-heavy-modes) ;things that slow-down init
(global-set-key (kbd "<f4>")          'goto-line)
(global-set-key (kbd "<f5>")      'revert-buffer) ;used to reload file (ct co)

;; Wind Move
(global-set-key (kbd "C-<left>" ) 'windmove-left )
(global-set-key (kbd "C-<right>") 'windmove-right)
(global-set-key (kbd "C-<up>"   ) 'windmove-up   )
(global-set-key (kbd "C-<down>" ) 'windmove-down )

;; Actions
(global-set-key (kbd "C-c e"  )    'eval-buffer)
(global-set-key (kbd "C-c C-c") 'comment-region)
(global-set-key (kbd "C-x C-b")        'ibuffer) ;use ibuffer to switch buffers
