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

;; Use Counsel for projectile
(counsel-projectile-mode t)

;; Use Avy to jump to stuff
(avy-setup-default)

(provide 'set-navigation)
