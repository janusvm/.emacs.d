;; set-edit-complete.el : settings for autocompletion, snippets, etc.
;; -----------------------------------------------------------------------------

(use-package company
  :diminish company-mode
  :bind (([remap completion-at-point] . company-complete)
         ([remap complete-symbol] . company-complete))
  :config
  (setq company-idle-delay 0
        company-show-numbers t
        company-tooltip-flip-when-above t)
  (global-company-mode t))

(use-package yasnippet
  :diminish yas-minor-mode
  :config (yas-global-mode t))

(provide 'set-edit-complete)
