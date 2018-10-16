;; init.el : main configuration file
;; -----------------------------------------------------------------------------

;; Disable visual interfaces early
(if (fboundp 'menu-bar-mode) (menu-bar-mode nil))
(if (fboundp 'tool-bar-mode) (tool-bar-mode nil))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode nil))

;; Disable splash screen
(setq inhibit-startup-message t)

;; Subdirectories
(setq settings-dir (expand-file-name "settings" user-emacs-directory))
(setq defuns-dir (expand-file-name "defuns" user-emacs-directory))
(setq site-lisp-dir (expand-file-name "site-lisp" user-emacs-directory))

(add-to-list 'load-path settings-dir)
(add-to-list 'load-path defuns-dir)
(add-to-list 'load-path site-lisp-dir)

;; Custom settings file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Set up packages before loading their settings
(require 'set-packages)

;; Load configurations from settings files
(require 'set-appearance)
(require 'set-misc)
(require 'set-editing)
(require 'set-company)
(require 'set-dired)
(require 'set-haskell)
(require 'set-R)

;; Load external, non-(m)elpa code
(require 'transpose-frame)

;; Load my own defuns
(require 'def-insert)
(require 'def-io)

;; Set up keybindings
(require 'set-keybindings)
