;; set-mgmt-project.el : settings related to project management
;; -----------------------------------------------------------------------------

(use-package projectile
  :diminish projectile-mode
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :config
  (projectile-mode +1)
  (setq projectile-completion-system 'ivy
        projectile-indexing-method 'hybrid))

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
