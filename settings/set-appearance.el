;; set-appearance.el : settings for the visual appearance of Emacs
;; -----------------------------------------------------------------------------

;; Begone, bars!
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Disable splash screen
(setq inhibit-startup-message t)

;; Disable cursor blinking
(blink-cursor-mode -1)

;; Faster command echoing
;; Highlight matching parentheses
(setq echo-keystrokes 0.1)
(show-paren-mode t)
(setq show-paren-delay 0)

;; Load nord theme with a couple of tweaks
(use-package nord-theme
  :init
  (setq nord-region-highlight "snowstorm") ; not yet implemented, apparently
  :config
  (load-theme 'nord t)
  (set-cursor-color "#bf616a")
  (add-to-list 'default-frame-alist '(cursor-color . "#bf616a"))
  (set-face-attribute 'region nil
		      :foreground "#2e3440"
		      :background "#88c0d0"))

;; Modeline
(use-package telephone-line
  :load-path "site-lisp/telephone-line"
  :config
  (defface nord-light-active   '((t (:foreground "#2e3440" :background "#81a1c1"))) "")
  (defface nord-light-inactive '((t (:foreground "#81a1c1" :background "#3b4252"))) "")
  (defface nord-dark           '((t (:foreground "#d8dee9" :background "#3b4252"))) "")
  (add-to-list 'telephone-line-faces '(nord-light . (nord-light-active . nord-light-inactive)))
  (add-to-list 'telephone-line-faces '(nord-dark  . (nord-dark         . nord-dark)))
  (setq telephone-line-lhs
        '((nord-light . (telephone-line-projectile-segment))
          (nord-dark  . (telephone-line-vc-segment))
          (nil        . (telephone-line-buffer-segment)))
        telephone-line-rhs
        '((nil        . (telephone-line-misc-info-segment
                         telephone-line-minor-mode-segment))
          (nord-dark  . (telephone-line-major-mode-segment))
          (nord-light . (telephone-line-airline-position-segment))))
  (telephone-line-mode t))

;; Rainbow delimiters
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

;; Font options
;; https://github.com/be5invis/Iosevka
(set-face-attribute 'default nil
                    :family "Iosevka SS04"
                    :height 135)
(set-face-attribute 'fixed-pitch nil
                    :family "Iosevka SS04"
                    :height 135)

;; More useful frame title than just "emacs@host"
(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b"))))

(provide 'set-appearance)
