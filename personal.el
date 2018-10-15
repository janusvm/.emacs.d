;; personal.el --- personalisation of Emacs

;; Highlight matching parentheses
(show-paren-mode t)
(setq show-paren-delay 0)

;; Load theme
(load-theme 'nord t)

;; Set font
(add-to-list 'default-frame-alist
	     '(font . "Ubuntu Mono-12"))

;; Remove graphical junk
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;; Enable Smart Line
(setq sml/theme 'respectful)
(sml/setup)

;; Use y/n instead of yes/no
(fset `yes-or-no-p `y-or-n-p)

;; Set stuff in the mode line
(column-number-mode t)
(display-battery-mode t)

;; Unset C-z to avoid accidentally closing Emacs
(global-unset-key (kbd "C-z"))

;; Disable auto save and backup
(setq backup-inhibited t
      make-backup-files nil
      auto-save-default nil
      auto-save-list-file-prefix nil)

;; Disable startup splash screen
(setq inhibit-startup-message t)
