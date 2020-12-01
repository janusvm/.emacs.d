;; def-insert.el : misc functions for inserting characters
;; -----------------------------------------------------------------------------

(defun fill-to-end (char)
  "Append `char' to the current line until it is `fill-column' columns wide."
  (interactive "cFill Character: ")
  (let ((n fill-column))
    (end-of-line)
    (while (< (current-column) n)
      (insert-char char))))

(defun yank-rectangle-push-lines ()
  "https://emacs.stackexchange.com/a/46352"
  (interactive)
  (narrow-to-region (point) (mark))
  (yank-rectangle)
  (widen))

(provide 'def-insert)
