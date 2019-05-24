;; set-prog-sql.el : SQL related settings
;; -----------------------------------------------------------------------------

(use-package sql
  :config
  (modify-syntax-entry ?\\ "\\" sql-mode-syntax-table))

(use-package sql-indent
  :hook (sql-mode . sqlind-minor-mode))

(provide 'set-prog-sql)
