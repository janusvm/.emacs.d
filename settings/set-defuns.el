;; set-defuns.el : custom functions in defuns/
;; -----------------------------------------------------------------------------

(use-package def-insert
  :bind (("C-c C--"   . fill-to-end)
         ("C-x r C-y" . yank-rectangle-push-lines)))

(use-package def-io
  :bind ("C-x C-M-f"  . find-file-on-clipboard))

(provide 'set-defuns)
