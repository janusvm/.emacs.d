;; r-and-julia.el --- R and Julia languages

(require 'ess-site)

(add-hook 'ess-mode-hook
	  '(lambda ()
	     
	     ;; Enable inserting closing braces/quotes/etc in this mode
	     (electric-pair-mode 1)

	     ;; Enable autocompletion
	     (require 'auto-complete)
	     (ac-config-default)
	     (setq ess-use-auto-complete t)
	     (setq ess-tab-complete-in-script t)))


;; Associate Julia files with the Julia mode from ESS
(add-to-list 'auto-mode-alist '("\\.jl$" . ess-julia-mode))

;; Indentation mode
(setq ess-default-style 'RStudio)

;; Syntax highlighting
(setq ess-R-font-lock-keywords
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

;; Console syntax highlighting
(setq inferior-R-font-lock-keywords
      '((ess-S-fl-keyword:prompt . t)
        (ess-R-fl-keyword:messages . t)
        (ess-R-fl-keyword:modifiers . t)
        (ess-R-fl-keyword:fun-defs . t)
        (ess-R-fl-keyword:keywords . t)
        (ess-R-fl-keyword:assign-ops . t)
        (ess-R-fl-keyword:constants . t)
        (ess-fl-keyword:matrix-labels . t)
        (ess-fl-keyword:fun-calls . t)
        (ess-fl-keyword:numbers . t)
        (ess-fl-keyword:operators . t)
        (ess-fl-keyword:delimiters . t)
        (ess-fl-keyword:= . t)
        (ess-R-fl-keyword:F&T . t)
        ))

;; Remove smart-underscore and assign <- to M-- (RStudio style)
(ess-toggle-underscore nil)
(defun r-assign-op ()
  (interactive)
  (just-one-space 1)
  (insert "<- "))
(define-key ess-mode-map (kbd "M--")  'r-assign-op)
(define-key inferior-ess-mode-map (kbd "M--")  'r-assign-op)

;; Hotkey for pipe operator C-S-m (RStudio style)
(defun r-pipe-op ()
   (interactive)
   (just-one-space 1)
   (insert "%>% "))
(define-key ess-mode-map (kbd "C-S-m") 'r-pipe-op)
(define-key inferior-ess-mode-map (kbd "C-S-m") 'r-pipe-op)

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
   (forward-line -1)
   )

(define-key poly-markdown+R-mode-map (kbd "C-c i") 'insert-chunk)

;; company completion
(add-hook 'after-init-hook 'global-company-mode)

;; Tab complete arguments inside functions
(define-key ess-mode-map (kbd "<backtab>") 'company-complete-common)
(define-key inferior-ess-mode-map (kbd "<backtab>") 'company-complete-common)
(define-key poly-markdown+R-mode-map (kbd "<backtab>") 'company-complete-common)
