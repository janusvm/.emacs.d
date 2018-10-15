;; python. el --- Python language

(elpy-enable)
(setq python-shell-interpreter "python3"
      python-shell-interpreter-args "-i")

; use flycheck not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; Enable inserting closing braces/quotes/etc in this mode
(add-hook 'elpy-mode-hook '(lambda () (electric-pair-mode 1)))

;; Disable indentation highlights
(add-hook 'elpy-mode-hook '(lambda () (highlight-indentation-mode 0)))

;; Don't echo input sent from file buffer in console
(setq elpy-shell-echo-input nil)
