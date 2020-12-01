;; set-edit-latex.el : LaTeX settings
;; -----------------------------------------------------------------------------

(use-package tex
  :mode (("\\.tex$"  . LaTeX-mode)
         ("\\.tikz$" . LaTeX-mode))
  :hook ((LaTeX-mode . LaTeX-math-mode)
         (LaTeX-mode . turn-on-reftex)
         (LaTeX-mode . TeX-source-correlate-mode)
         (TeX-after-compilation-finished-functions . TeX-revert-document-buffer))
  :config
  (add-to-list 'TeX-command-list '("Make" "make" TeX-run-command nil t))
  (add-to-list 'TeX-view-program-selection '(output-pdf "Zathura"))
  (setq TeX-auto-save t
        TeX-parse-self t
        TeX-electric-sub-and-superscript t
        latex-run-command "pdflatex"
        LaTeX-electric-left-right-brace t
        reftex-plug-into-AUCTeX t
        reftex-bibliography-commands '("bibliography"
                                       "nobibliography"
                                       "addbibresource")
        TeX-command-default "Make"
        TeX-electric-math '("\\(" . "\\)")
        TeX-source-correlate-start-server t)
  (setq-default TeX-master nil))

(use-package company-auctex
  :config
  (company-auctex-init))

(provide 'set-edit-latex)
