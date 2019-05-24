;; set-core.el : settings that other settings files depend on
;; -----------------------------------------------------------------------------

;; Only hydra for now
(use-package hydra
  :ensure t)

(use-package use-package-hydra
  :ensure t)

;; Unset default keys to avoid accidentally closing Emacs
;; Use C-x r q instead (mnemonic: really quit)
(global-unset-key (kbd "C-x C-c"))
(global-set-key (kbd "C-x r q") 'save-buffers-kill-terminal)

;; I always want to kill the current buffer, don't ask
(global-set-key (kbd "C-x k") 'kill-this-buffer)

(provide 'set-core)
