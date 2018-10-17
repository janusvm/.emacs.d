;; set-lisp.el : settings for Lisp editing
;; -----------------------------------------------------------------------------

;; Enable lispy when editing lisp
(add-hook 'emacs-lisp-mode-hook (lambda () (lispy-mode t)))

;; including the minibuffer
(add-hook 'minibuffer-setup-hook
	  (lambda ()
	    (when (eq this-command 'eval-expression)
	      (lispy-mode t))))

(provide 'set-lisp)
