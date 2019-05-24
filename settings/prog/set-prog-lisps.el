;; set-prog-lisps.el : settings for Lisps and Schemes
;; -----------------------------------------------------------------------------

(use-package eldoc
  :diminish eldoc-mode)

(use-package lispy
  :hook ((emacs-lisp-mode scheme-mode) . lispy-mode)
  :init
  (add-hook 'minibuffer-setup-hook
	    (lambda () (when (eq this-command 'eval-expression)
			 (lispy-mode t)))))

(use-package geiser
  :defer t
  :config
  (setq geiser-active-implementations '(guile))
  (setq geiser-default-implementation 'guile))

;; TODO when I actually start using Clojure
(use-package cider
  :defer t)

;; TODO when I actually start using Common Lisp
(use-package slime
  :defer t
  :config
  (setq inferior-lisp-program "clisp"))

(provide 'set-prog-lisps)
