;; set-core.el : settings that other settings files depend on
;; -----------------------------------------------------------------------------

;; Only hydra for now
(use-package hydra
  :ensure t)

(use-package use-package-hydra
  :ensure t)

(use-package exec-path-from-shell
  :config
  (exec-path-from-shell-copy-env "SSH_AUTH_SOCK"))

(use-package openwith
  :demand
  :config
  (setq openwith-associations
        (list
         (list (openwith-make-extension-regexp
                '("pdf" "ps" "djvu" "eps"))
               "zathura"
               '(file))
         (list (openwith-make-extension-regexp
                '("png" "gif" "bmp" "tif" "jpg" "jpeg"))
               "sxiv"
               '(file))))
  (openwith-mode t))

(use-package terminal-here
  :bind ("<C-s-return>" . terminal-here-launch)
  :config
  (setq terminal-here-terminal-command (list "urxvt")))

;; Unset default keys to avoid accidentally closing Emacs
;; Use C-x r q instead (mnemonic: really quit)
(global-unset-key (kbd "C-x C-c"))
(global-set-key (kbd "C-x r q") 'save-buffers-kill-terminal)

;; I always want to kill the current buffer, don't ask
(global-set-key (kbd "C-x k") 'kill-this-buffer)

(provide 'set-core)
