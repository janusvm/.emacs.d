;; set-mgmt-project.el : settings related to project management
;; -----------------------------------------------------------------------------

(use-package projectile
  :diminish projectile-mode
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :config
  (projectile-global-mode t)
  (setq projectile-completion-system 'ivy))

(use-package counsel-projectile
  :config
  (counsel-projectile-mode t))

(use-package ibuffer-projectile
  :bind ("C-x C-b" . ibuffer)
  :hook (ibuffer . (lambda ()
		     (ibuffer-projectile-set-filter-groups)
		     (unless (eq ibuffer-sorting-mode 'alphabetic)
		       (ibuffer-do-sort-by-alphabetic)))))

(use-package magit)

(provide 'set-mgmt-project)
