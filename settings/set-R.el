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
(setq my-R-hl-config
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
(setq ess-R-font-lock-keywords my-R-hl-config)
(setq inferior-R-font-lock-keywords my-R-hl-config)


;; Remove smart-underscore and assign <- to M-- (RStudio style)
(ess-toggle-underscore nil)
(defun R-assign-op ()
  (interactive)
  (just-one-space 1)
  (insert "<- "))
(define-key ess-mode-map (kbd "M--")  'R-assign-op)
(define-key inferior-ess-mode-map (kbd "M--")  'R-assign-op)

;; Hotkey for pipe operator C-S-m (RStudio style)
(defun R-pipe-op ()
   (interactive)
   (just-one-space 1)
   (insert "%>% "))
(define-key ess-mode-map (kbd "C-S-m") 'R-pipe-op)
(define-key inferior-ess-mode-map (kbd "C-S-m") 'R-pipe-op)

;; polymode
(require 'poly-R)
(require 'poly-markdown)

(add-to-list 'auto-mode-alist '("\\.md" . poly-markdown-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))

;; Insert a new (empty) chunk to R markdown
(defun insert-chunk ()
   "Insert chunk environment Rmd sessions."
   (interactive)
   (insert "```{r}\n\n```")
   (forward-line -1))

(define-key poly-markdown+R-mode-map (kbd "C-c i") 'insert-chunk)

;; Tab complete arguments inside functions
(define-key ess-mode-map (kbd "<backtab>") 'company-complete-common)
(define-key inferior-ess-mode-map (kbd "<backtab>") 'company-complete-common)
(define-key poly-markdown+R-mode-map (kbd "<backtab>") 'company-complete-common)

(provide 'set-R)
