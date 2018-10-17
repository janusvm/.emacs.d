;; set-compile.el : general compilation settings
;; -----------------------------------------------------------------------------

;; https://emacs.stackexchange.com/questions/62/hide-compilation-window
(setq compilation-finish-function
  (lambda (buf str)
    (if (null (string-match ".*exited abnormally.*" str))
        ;; no errors, make the compilation window go away in a few seconds
        (progn
          (delete-windows-on (get-buffer-create "*compilation*"))
          (message "No compilation errors!")))))

(provide 'set-compile)
