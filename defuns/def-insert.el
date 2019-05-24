;; def-insert.el : misc functions for inserting characters
;; -----------------------------------------------------------------------------

(defun fill-to-end (char)
  "Append `char' to the current line until it is `fill-column' columns wide."
  (interactive "cFill Character: ")
  (let ((n fill-column))
    (end-of-line)
    (while (< (current-column) n)
      (insert-char char))))

(provide 'def-insert)
