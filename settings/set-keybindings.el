;; set-keybindings.el : custom keybindings
;; -----------------------------------------------------------------------------

;; Unset default keys to avoid accidentally closing Emacs
;; Use C-x r q instead (mnemonic: really quit)
(global-unset-key (kbd "C-x C-c"))
(global-set-key (kbd "C-x r q") 'save-buffers-kill-terminal)

;; Rebind C-z to undo
(global-set-key (kbd "C-z") 'undo)

;; Use ibuffer instead of list-buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Put that menu key on the laptop to good use
(global-set-key (kbd "<menu>") 'execute-extended-command)

;; Keybindings for Ivy, Swiper, and Counsel
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

;; NeoTree
(global-set-key (kbd "<f8>") 'neotree-toggle)

;; Avy keybindings
(global-set-key (kbd "C-.") 'avy-pop-mark)
(global-set-key (kbd "C-:") 'avy-goto-char)
(global-set-key (kbd "C-'") 'avy-goto-word-1)

;; Projectile and friends
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; Keybindings for multiple-cursors
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Keybindings for expand-region
(global-set-key (kbd "C-+") 'er/expand-region)

;; Keybindings for magit
(global-set-key (kbd "C-x g") 'magit-status)

;; Join lines into oneliner
;; http://whattheemacsd.com/key-bindings.el-03.html
(global-set-key (kbd "M-j")
		(lambda ()
		  (interactive)
		  (join-line -1)))

;; Custom functions
(global-set-key (kbd "C-x C-M-f") 'find-file-on-clipboard)

(provide 'set-keybindings)
