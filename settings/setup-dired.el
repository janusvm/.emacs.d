;; setup-dired.el : settings related to dired
;; -----------------------------------------------------------------------------

;; Copy/move between dired windows
(setq dired-dwim-target t)

;; Use a button for opening file/folder in same buffer
(put 'dired-find-alternate-file 'disabled nil)

(provide 'setup-dired)
