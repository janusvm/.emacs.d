;; set-appearance.el : visual settings
;; -----------------------------------------------------------------------------

;; Load theme
(load-theme 'nord t)

;; Mode line setup
(spaceline-all-the-icons-theme)
(spaceline-all-the-icons--setup-git-ahead)
(spaceline-all-the-icons--setup-neotree)
(set-face-attribute 'spaceline-highlight-face nil :background "#5E81AC")

;; Font options
;; https://github.com/be5invis/Iosevka
(set-face-attribute 'default nil
                    :family "Iosevka SS04"
                    :height 120)

;; Icons and Neotree
(setq neo-autorefresh nil)
(setq neo-theme 'icons)
(setq neo-window-width 35)

;; Highlight matching parentheses
(show-paren-mode t)
(setq show-paren-delay 0)

;; Highlight current line
(global-hl-line-mode t)

;; Blink modeline instead of beeping
(setq visible-bell nil)
(setq ring-bell-function
      (lambda ()
	(invert-face 'powerline-active2)
	(run-with-timer 0.1 nil 'invert-face 'powerline-active2)))

;; Set a better system window name and don't blink the cursor
(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (blink-cursor-mode -1))

(provide 'set-appearance)
