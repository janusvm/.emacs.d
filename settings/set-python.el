;; set-python.el : settings for Python development
;; -----------------------------------------------------------------------------

;; Use elpy
(elpy-enable)

;; Use iPython
(setq python-shell-interpreter "ipython3"
      python-shell-interpreter-args "-i --colors=NoColor")

(provide 'set-python)
