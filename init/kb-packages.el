; ~/.emacs.d/init/kb-packages.el

;; Add repositories and initialize packet manager
(require 'package)
(setq package-archives '(("gnu"       . "https://elpa.gnu.org/packages/"      )
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa"     . "https://melpa.org/packages/"         )
			 ("original"  . "http://tromey.com/elpa"              )
			 ("org"       . "http://orgmode.org/elpa/"            )))
(package-initialize)

;; Packets to be installed
(defvar required-packages '(ido-vertical-mode
			    fill-column-indicator) "list of packages")

;; Add CommonLisp functions and macros
(require 'cl)

;; Check if all packages are installed
(defun packages-installed-p ()
  (loop for p in required-packages
	unless (package-installed-p p) do (return nil)
	finally (return t)))

;; Install the missing packages one by one
(unless (packages-installed-p)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  (dolist (p required-packages)
    (unless (package-installed-p p)
      (package-install p))))
