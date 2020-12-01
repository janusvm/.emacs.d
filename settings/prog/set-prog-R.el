;; set-prog-R.el : settings for programming in R
;; -----------------------------------------------------------------------------

(use-package hydra-ess
  :after ess
  :bind (:map ess-mode-map
              ("M-<SPC>" . hydra-ess-main/body)))

(use-package ess
  :after (company ess-custom)
  :init
  (require 'ess-site)
  (defun my/R-pipe-op ()
    (interactive)
    (end-of-line)
    (just-one-space 1)
    (insert "%>%")
    (reindent-then-newline-and-indent))
  :bind (:map ess-mode-map
              ("M--" . ess-insert-assign)
              ("C-S-m" . my/R-pipe-op)
              :map inferior-ess-mode-map
              ("M--" . ess-insert-assign)
              ("C-S-m" . my/R-pipe-op)))

(use-package ess-custom
  :config
  (setq ess-use-company t
        ess-use-ido nil
        ess-use-flymake nil
        ess-tab-complete-in-script nil
        ess-default-style 'RStudio-
        ess-roxy-str "#'"
        ess-pdf-viewer-pref "zathura"
        ess-smart-S-assign-key nil

        ;; Syntax highlighting
        my/R-hl-config '((ess-R-fl-keyword:modifiers  . t)
                         (ess-R-fl-keyword:fun-defs   . t)
                         (ess-R-fl-keyword:keywords   . t)
                         (ess-R-fl-keyword:assign-ops . t)
                         (ess-R-fl-keyword:constants  . t)
                         (ess-fl-keyword:fun-calls    . t)
                         (ess-fl-keyword:numbers      . t)
                         (ess-fl-keyword:operators    . t)
                         (ess-fl-keyword:delimiters   . t)
                         (ess-fl-keyword:=            . t)
                         (ess-R-fl-keyword:F&T        . t))
        ess-R-font-lock-keywords my/R-hl-config
        inferior-R-font-lock-keywords my/R-hl-config))

(provide 'set-prog-R)
