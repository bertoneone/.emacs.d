; ~/.emacs.d/init/kb-macro-func.el

;; Macros ======================================================================
(defmacro hook-into-modes (func modes)
  `(dolist (mode-hook ,modes)
     (add-hook mode-hook, func)))

;; Functions ===================================================================

