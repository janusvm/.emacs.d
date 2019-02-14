;; set-python.el : settings for Python development
;; -----------------------------------------------------------------------------

;; Use elpy
(elpy-enable)

;; Use iPython
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")

(provide 'set-python)
