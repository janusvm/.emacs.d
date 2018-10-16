;; set-haskell.el : settings for Haskell development
;; -----------------------------------------------------------------------------

(require 'haskell-mode)

;; Minor mode hooks
(add-hook 'haskell-mode-hook 'haskell-indentation-mode)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
