;; set-lisp.el : settings for Lisp editing
;; -----------------------------------------------------------------------------

;; Enable lispy when editing Lisps
(add-hook 'emacs-lisp-mode-hook (lambda () (lispy-mode t)))
(add-hook 'scheme-mode-hook (lambda () (lispy-mode t)))

;; including the minibuffer
(add-hook 'minibuffer-setup-hook
	  (lambda ()
	    (when (eq this-command 'eval-expression)
	      (lispy-mode t))))

;; My choice of Scheme is MIT
(setq geiser-active-implementations '(mit))
(setq geiser-default-implementation 'mit)

(provide 'set-lisp)
