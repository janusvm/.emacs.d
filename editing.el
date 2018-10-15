;; editing.el --- stuff relating to general editing across modes

;; Ace jump mode
(autoload 'ace-jump-mode "ace-jump-mode" t)
(define-key global-map (kbd "C-c C-SPC") 'ace-jump-mode)
(eval-after-load "ace-jump-mode" '(ace-jump-mode-enable-mark-sync))
(define-key global-map (kbd "C-x C-SPC") 'ace-jump-mode-pop-mark)

;; Multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


;; Expand region
(require 'expand-region)
(global-set-key (kbd "C-+") 'er/expand-region)

;; Enable inputting unicode symbols with TeX commands
;; toggle with C-\
(setq default-input-method "TeX")

;; Column width for line breaking with M-q
(setq-default fill-column 80)

;; Custom line break shortcuts
(global-set-key (kbd "<S-return>") (kbd "C-e C-m"))
(global-set-key (kbd "<M-return>") (kbd "C-e C-j"))
