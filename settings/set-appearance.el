;; set-appearance.el : visual settings
;; -----------------------------------------------------------------------------

;; Highlight matching parentheses
(show-paren-mode t)
(setq show-paren-delay 0)

;; Load theme
(load-theme 'nord t)

;; Customize selection colours
(set-cursor-color "#bf616a")
(add-to-list 'default-frame-alist '(cursor-color . "#bf616a"))
(set-face-attribute 'region nil
                    :background "#88c0d0"
                    :foreground "#2e3440")

;; Colours in pdf-view midnight mode
(setq pdf-view-midnight-colors '("#e5e9f0" . "#2e3440"))

;; Mode line setup
(fancy-battery-mode t)
(spaceline-all-the-icons-theme)
(spaceline-all-the-icons--setup-git-ahead)
(spaceline-all-the-icons--setup-neotree)
(set-face-attribute 'spaceline-highlight-face nil :background "#5e81ac")

;; Rainbow delimiters in programming modes
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; Font options
;; https://github.com/be5invis/Iosevka
(set-face-attribute 'default nil
                    :family "Iosevka SS04"
                    :height 120)
(set-face-attribute 'fixed-pitch nil
                    :family "Iosevka SS04"
                    :height 120)

;; Icons and Neotree
(setq neo-autorefresh nil)
(setq neo-theme 'icons)
(setq neo-window-width 35)

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
