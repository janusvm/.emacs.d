;; set-edit-misc.el : miscellaneous editing/writing settings
;; -----------------------------------------------------------------------------

;; Undo with C-z
(global-set-key (kbd "C-z") 'undo)

;; Auto-refresh buffers
(global-auto-revert-mode t)
(setq global-auto-revert-non-file-buffers t
      auto-revert-verbose nil)

;; Disable autosave and backups
(setq backup-inhibited t
      make-backup-files nil
      auto-save-default nil
      auto-save-list-file-prefix nil)

;; Disable abbrevs
(setq-default abbrev-mode nil)
(setq save-abbrevs nil)

;; Always include final newline
(setq require-final-newline t
      mode-require-final-newline t)

;; Strip trailing whitespace when saving
(setq delete-trailing-lines t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Always use electric pairs
(electric-pair-mode 1)

;; Use y/n instead of yes/no
(defalias 'yes-or-no-p 'y-or-n-p)

;; Allow pasting selection outside of Emacs
(setq x-select-enable-clipboard t)

;; UTF-8
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Enable inputting unicode symbols with TeX commands
;; toggle with C-\
(setq default-input-method 'TeX)

;; Wrap lines at words, and don't double space
(setq-default truncate-lines nil
	      word-wrap t
	      sentence-end-double-space nil)

;; Don't insert tabs by default
(setq-default indent-tabs-mode nil)

;; Line length: 80
(setq-default fill-column 80)
(setq fill-column 80)

;; Regex builder
(use-package re-builder
  :config (setq reb-re-syntax 'string))

;; Writable grep buffers
(use-package wgrep
  :config
  (setq wgrep-auto-save-buffer t))

(provide 'set-edit-misc)
