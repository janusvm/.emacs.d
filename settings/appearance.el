;; appearance.el : visual settings
;; -----------------------------------------------------------------------------

;; Load theme
(load-theme 'nord t)

;; Mode line setup
(line-number-mode t)
(column-number-mode t)
(display-battery-mode t)
(setq sml/theme 'respectful)
(sml/setup)

;; Font options
;; https://github.com/be5invis/Iosevka
(add-to-list 'default-frame-alist
	     '(font . "Iosevka SS04-12"))

;; Highlight matching parentheses
(show-paren-mode t)
(setq show-paren-delay 0)

;; Highlight current line
(global-hl-line-mode t)

;; Blink modeline instead of beeping
(setq visible-bell nil)
(setq ring-bell-function
      (lambda ()
	(invert-face 'mode-line)
	(run-with-timer 0.1 nil 'invert-face 'mode-line)))

;; Set a better system window name and don't blink the cursor
(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (blink-cursor-mode nil))

(provide 'appearance)
