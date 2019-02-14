;; set-navigation.el : settings for jumping around Emacs
;; -----------------------------------------------------------------------------

;; Ivy, Swiper, and Counsel
(ivy-mode t)
(counsel-mode t)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(setq ivy-count-format "(%d/%d) ")

;; Use Projectile for projects
(projectile-global-mode t)
(setq projectile-completion-system 'ivy)

;; Use Counsel for projectile
(counsel-projectile-mode t)

;; https://github.com/ericdanan/counsel-projectile/issues/58#issuecomment-387752675
;; Won't be necessary after counsel-projectile 0.3.0
(defun my/counsel-projectile-switch-project-action-dired (project)
  "Open ‘dired’ at the root of the project."
  (let ((projectile-switch-project-action
	 (lambda () (projectile-dired))))
    (counsel-projectile-switch-project-by-name project)))

(counsel-projectile-modify-action
 'counsel-projectile-switch-project-action
 '((add ("." my/counsel-projectile-switch-project-action-dired
	 "open ‘dired’ at the root of the project") 1)))

;; Make neotree change with projectile
(setq projectile-switch-project-action 'neotree-projectile-action)

;; Use Avy to jump to stuff *everywhere*
(setq avy-all-windows 'all-frames)

;; Configure ibuffer-projectile
(add-hook 'ibuffer-hook
	  (lambda ()
	    (ibuffer-projectile-set-filter-groups)
	    (unless (eq ibuffer-sorting-mode 'alphabetic)
	      (ibuffer-do-sort-by-alphabetic))))

(provide 'set-navigation)
