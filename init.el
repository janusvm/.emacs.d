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

(add-to-list 'load-path settings-dir)
(add-to-list 'load-path defuns-dir)

;; Custom settings file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Set up packages
(require 'setup-package)

;; Set up appearance
(require 'appearance)

;; Set up defaults
(require 'defaults)

;; Load configurations from setup files
(require 'setup-dired)

;; Load packages that don't have their own setup file
(require 'expand-region)
(require 'magit)
(require 'multiple-cursors)

;; Set up keybindings
(require 'keybindings)
