;; set-sql.el : SQL related settings
;; -----------------------------------------------------------------------------

;; Enable SQL indentation
(add-hook 'sql-mode-hook 'sqlind-minor-mode)

;; Treat backslash as escape character
(add-hook 'sql-mode-hook
	  (lambda () (modify-syntax-entry ?\\ "\\" sql-mode-syntax-table)))

(provide 'set-sql)
