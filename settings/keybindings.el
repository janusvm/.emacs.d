;; keybindings.el : custom keybindings
;; -----------------------------------------------------------------------------

;; Unset to avoid accidentally minimizing
(global-unset-key (kbd "C-z"))

;; Keybindings for multiple-cursors
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Keybindings for expand-region
(global-set-key (kbd "C-+") 'er/expand-region)

;; Keybindings for magit
(global-set-key (kbd "C-x g") 'magit-status)

(provide 'keybindings)
