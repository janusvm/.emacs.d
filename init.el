;; init.el -

;; Packages
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; Stuff related to Custom
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; Emacs folder constant, used for loading files
(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))

;; Load files in user folder
(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))


;;---------- LOAD FILES ----------

(load-user-file "personal.el")
(load-user-file "editing.el")
(load-user-file "functions.el")
(load-user-file "lisp.el")
(load-user-file "latex.el")
(load-user-file "r-and-julia.el")
(load-user-file "python.el")
(load-user-file "haskell.el")
(load-user-file "sql.el")
(load-user-file "org.el")
(load-user-file "shell.el")
(load-user-file "git.el")
(load-user-file "misc.el")

(put 'dired-find-alternate-file 'disabled nil)
