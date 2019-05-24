;; set-prog-compile.el : general compilation settings
;; -----------------------------------------------------------------------------

;; Scroll compilation output as it renders
(setq compilation-scroll-output t)

;; Hook for checking the number of open windows in frame prior to compilation.
;; If there is more than 1 window when ignoring NeoTree, set a variable to
;; indicate that the window should be deleted.
(add-hook 'compilation-mode-hook
          (lambda ()
            (if (get-buffer-window " *NeoTree*")
                (setq del-comp-win-after-finish
                      (= (length (window-list)) 2))
              (setq del-comp-win-after-finish
                    (= (length (window-list)) 1)))))

;; Hook for getting rid of the compilation buffer in case of no errors.
;; https://emacs.stackexchange.com/questions/62/hide-compilation-window
(add-hook 'compilation-finish-functions
          (lambda (buf str)
            (if (null (string-match ".*exited abnormally.*" str))
                ;; No errors ⟹ kill compilation buffer
                (progn
                  (if del-comp-win-after-finish
                      ;; Should the window be deleted as well?
                      (delete-windows-on buf))
                  (kill-buffer buf)
                  (message "No compilation errors!")))))

(provide 'set-prog-compile)
