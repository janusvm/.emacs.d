;; set-R.el : settings for R and RMarkdown related development
;; -----------------------------------------------------------------------------

(require 'ess-site)

;; Enable electric delimiters
(add-hook 'ess-mode-hook '(lambda () (electric-pair-mode t)))

;; Use company for completions
(setq ess-use-company t)

;; Indentation mode
(setq ess-default-style 'RStudio)

;; Maximum syntax highlighting
(setq my/R-hl-config
      '((ess-R-fl-keyword:modifiers . t)
        (ess-R-fl-keyword:fun-defs . t)
        (ess-R-fl-keyword:keywords . t)
        (ess-R-fl-keyword:assign-ops . t)
        (ess-R-fl-keyword:constants . t)
        (ess-fl-keyword:fun-calls . t)
        (ess-fl-keyword:numbers . t)
        (ess-fl-keyword:operators . t)
        (ess-fl-keyword:delimiters . t)
        (ess-fl-keyword:= . t)
        (ess-R-fl-keyword:F&T . t)
	))
(setq ess-R-font-lock-keywords my/R-hl-config)
(setq inferior-R-font-lock-keywords my/R-hl-config)


;; Remove smart-underscore and assign <- to M-- (RStudio style)
(ess-toggle-underscore nil)
(defun my/R-assign-op ()
  (interactive)
  (just-one-space 1)
  (insert "<- "))

;; Hotkey for pipe operator C-S-m (RStudio style)
(defun my/R-pipe-op ()
   (interactive)
   (just-one-space 1)
   (insert "%>% "))

;; polymode
(require 'poly-R)
(require 'poly-markdown)

(add-to-list 'auto-mode-alist '("\\.md" . poly-markdown-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))


(provide 'set-R)
