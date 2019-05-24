;; set-mgmt-navigation.el : navigation related settings
;; -----------------------------------------------------------------------------

;; Ivy, Swiper, and Counsel
(use-package ivy
  :load-path "site-lisp/swiper"
  :diminish ivy-mode
  :bind ("C-c r" . ivy-resume)
  :config
  (ivy-mode t)
  (setq enable-recursive-minibuffers t
	ivy-count-format "(%d/%d) "))

(use-package swiper
  :load-path "site-lisp/swiper"
  :bind (("C-s" . swiper-isearch)
         ("C-r" . swiper-isearch)))

(use-package counsel
  :load-path "site-lisp/swiper"
  :diminish counsel-mode
  :bind (("<f2> u" . counsel-unicode-char)
	 :map minibuffer-local-map
	 ("C-r" . counsel-minibuffer-history))
  :config
  (counsel-mode t))

;; Avy for jumping
(use-package avy
  :bind (("C-." . avy-pop-mark)
	 ("C-:" . avy-goto-char)
	 ("C-'" . avy-goto-word-1)
	 ("C-_" . avy-goto-line))
  :config
  (setq avy-all-windows 'all-frames))

(use-package ace-window
  :bind ("C-¨" . ace-window))

(use-package transpose-frame)

(provide 'set-mgmt-navigation)
