;; set-edit-markdown.el : settings for writing markdown
;; -----------------------------------------------------------------------------

(use-package poly-markdown
  :mode (("\\.md$"   . poly-markdown-mode)
         ("\\.[jJ]md$" . poly-markdown-mode)))

(use-package poly-R
  :mode ("\\.Rmd$" . poly-markdown+r-mode))

(provide 'set-edit-markdown)
