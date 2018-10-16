;; set-dired.el : settings related to dired
;; -----------------------------------------------------------------------------

;; Set listing switches (args to ls)
(setq dired-listing-switches "-alv --group-directories-first")

;; Copy/move between dired windows
(setq dired-dwim-target t)

;; Use a button for opening file/folder in same buffer
(put 'dired-find-alternate-file 'disabled nil)

(provide 'set-dired)
