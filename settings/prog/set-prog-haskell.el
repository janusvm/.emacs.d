;; set-prog-haskell.el : settings for Haskell development
;; -----------------------------------------------------------------------------

(use-package haskell-mode
  :hook ((haskell-mode . haskell-indentation-mode)
         (haskell-mode . interactive-haskell-mode))
  :config
  (setq haskell-process-type 'stack-ghci
        haskell-process-args-stack-ghci
          '("--ghci-options=-ferror-spans -fshow-loaded-modules"
            "--no-build" "--no-load")))

(provide 'set-prog-haskell)
