;; def-insert.el : misc functions for inserting characters
;; -----------------------------------------------------------------------------

;; Appends a given character to a line until that line is n characters long
;; Mainly intended for comment headers
(defun fill-to-end (char n)
  (interactive "cFill Character:\nnLine length: ")
  (save-excursion
    (end-of-line)
    (while (< (current-column) n)
      (insert-char char))))

(provide 'def-insert)
