;; def-io.el : functions for file io
;; -----------------------------------------------------------------------------

;; Opens a file whose path is copied to the clipboard
(defun find-file-on-clipboard ()
  (interactive)
  (if (file-exists-p (current-kill 0))
      (find-file (current-kill 0))
    (message "Not a valid file.")))

;; Rename file of the current buffer
;; from http://stackoverflow.com/a/37456354/2369867
(defun rename-current-buffer-file ()
  "Renames current buffer and file it is visiting."
  (interactive)
  (let* ((name (buffer-name))
        (filename (buffer-file-name))
        (basename (file-name-nondirectory filename)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (let ((new-name (read-file-name "New name: " (file-name-directory filename) basename nil basename)))
        (if (get-buffer new-name)
            (error "A buffer named '%s' already exists!" new-name)
          (rename-file filename new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil)
          (message "File '%s' successfully renamed to '%s'"
                   name (file-name-nondirectory new-name)))))))

(provide 'def-io)
