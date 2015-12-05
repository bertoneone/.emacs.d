; ~/.emacs.d/init/kb-native-mod.el

;; Disable/Remove
(when (fboundp 'menu-bar-mode  )   (menu-bar-mode     -1))
(when (fboundp 'tool-bar-mode  )   (tool-bar-mode     -1))
(when (fboundp 'scroll-bar-mode)   (scroll-bar-mode   -1))
(when (fboundp 'blink-cursor-mode) (blink-cursor-mode -1))

;; Enable
(when (fboundp 'linum-mode        ) (linum-mode         1))
(when (fboundp 'column-number-mode) (column-number-mode 1))
(when (fboundp 'electric-pair-mode) (electric-pair-mode 1)) ;matching delimiters
(when (fboundp 'ido-mode          ) (ido-mode           1)) ;interactive (C-x b)
(when (fboundp 'show-paren-mode   ) (show-paren-mode    1)) ;show matching ()
(when (fboundp 'winner-mode       ) (winner-mode        1)) ;store windows conf

;;; Suggested fix to make show-paren-mode display where is matching if offscreen
;;; find better solution!!
;; (defadvice show-paren-function
;;       (after show-matching-paren-offscreen activate)
;;       "If the matching paren is offscreen, show the matching line in the
;;         echo area. Has no effect if the character before point is not of
;;         the syntax class ')'."
;;       (interactive)
;;       (let* ((cb (char-before (point)))
;;              (matching-text (and cb
;;                                  (char-equal (char-syntax cb) ?\) )
;;                                  (blink-matching-open))))
;;         (when matching-text (message matching-text))))
