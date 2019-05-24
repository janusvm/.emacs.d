;; set-defuns.el : custom functions in defuns/
;; -----------------------------------------------------------------------------

(use-package def-insert
  :bind ("C-c C--" . fill-to-end))

(use-package def-io
  :bind ("C-x C-M-f" . find-file-on-clipboard))

(provide 'set-defuns)
