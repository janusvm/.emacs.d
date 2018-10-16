;; set-keybindings.el : custom keybindings
;; -----------------------------------------------------------------------------

;; Unset default keys to avoid accidentally closing Emacs
;; Use C-x r q instead (mnemonic: really quit)
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-c"))
(global-set-key (kbd "C-x r q") 'save-buffers-kill-terminal)

;; Use ibuffer instead of list-buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Keybindings for multiple-cursors
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Keybindings for expand-region
(global-set-key (kbd "C-+") 'er/expand-region)

;; Keybindings for magit
(global-set-key (kbd "C-x g") 'magit-status)

(provide 'set-keybindings)
