;; misc.el --- Miscellaneous stuff, such as navigation

;; Dired
(put 'dired-find-alternative-file 'disabled nil)
(setq dired-listing-switches "-ahl --group-directories-first")

;; Helm
(require 'helm)
(require 'helm-config)
(global-set-key (kbd "<menu>") 'helm-M-x)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(helm-mode t)
