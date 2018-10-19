;; set-editing : various settings for editing buffers
;; -----------------------------------------------------------------------------

;; Always include final newline
(setq require-final-newline t
      mode-require-final-newline t)

;; Strip trailing whitespace when saving
(setq delete-trailing-lines t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; yasnippet
(yas-global-mode t)

(provide 'set-editing)
