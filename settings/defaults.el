;; defaults.el : better default settings
;; -----------------------------------------------------------------------------

;; Auto refresh buffers after external changes til file
(global-auto-revert-mode t)
(setq global-auto-revert-non-file-buffers t
      auto-revert-verbose nil)

;; Disable auto save and backup
(setq backup-inhibited t
      make-backup-files nil
      auto-save-default nil)

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

;; Show keystrokes in minibuffer faster
(setq echo-keystrokes 0.1)

;; Disable selecting with Shift
(setq shift-select-mode nil)

;; Delete text in region when typing
(delete-selection-mode t)

;; Move files to Rubbish Bin when deleting
(setq delete-by-moving-to-trash t)

;; Don't break lines
(setq-default truncate-lines t)

;; Don't insert tabs by default
(setq-default indent-tabs-mode nil)

;; Line length: 80
(setq-default fill-column 80)
(setq fill-column 80)

;; Don't double space after period
(setq-default sentence-end-double-space nil)

;; Allow editing of compressed files
(auto-compression-mode t)

(provide 'defaults)
