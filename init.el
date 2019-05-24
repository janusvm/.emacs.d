;; init.el : main configuration file
;; -----------------------------------------------------------------------------

;; Load use-package from submodule
(eval-when-compile
  (add-to-list 'load-path
               (expand-file-name "site-lisp/use-package" user-emacs-directory))
  (require 'use-package))

;; Set up package list
(use-package package
  :demand
  :config
  (setq package-archives
        '(("Org"          . "http://orgmode.org/elpa/")
          ("GNU ELPA"     . "https://elpa.gnu.org/packages/")
          ("MELPA Stable" . "https://stable.melpa.org/packages/")
          ("MELPA"        . "https://melpa.org/packages/"))
        package-archive-priorities
        '(("Org"          . 15)
          ("MELPA Stable" . 10)
          ("GNU ELPA"     . 5)
          ("MELPA"        . 0)))
  (package-initialize)
  (setq package-enable-at-startup nil)
  (unless package-archive-contents
    (package-refresh-contents)))

;; Set separate custom file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Add subdirectories to load path
(dolist (dirname '("settings" "site-lisp" "defuns" "hydras"))
  (let ((dirpath (expand-file-name dirname user-emacs-directory)))
    (add-to-list 'load-path dirpath)
    (dolist (subdir (directory-files dirpath t "\\w+"))
      (when (file-directory-p subdir)
        (add-to-list 'load-path subdir)))))


;; SETTINGS --------------------------------------------------------------------
;; Load settings from files in settings folder and subfolders

;; Load core settings
(use-package set-core)

;; Set up visual interface
(use-package set-appearance)

;; Editing and writing
(use-package set-edit-misc)
(use-package set-edit-mark)
(use-package set-edit-complete)
(use-package set-edit-latex)
(use-package set-edit-org)
(use-package set-edit-markdown)

;; Management and navigation
(use-package set-mgmt-dired)
(use-package set-mgmt-navigation)
(use-package set-mgmt-project)

;; Programming languages
(use-package set-prog-lisps)
(use-package set-prog-R)
(use-package set-prog-J)
(use-package set-prog-haskell)
(use-package set-prog-python)
(use-package set-prog-sql)
(use-package set-prog-compile)

;; Custom functions
(use-package set-defuns)
