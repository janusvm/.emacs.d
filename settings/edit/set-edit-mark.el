;; set-edit-mark.el : settings related to marking and region editing
;; -----------------------------------------------------------------------------

(use-package multiple-cursors
  :bind (("M-<down>"   . mc/mark-next-like-this)
         ("M-<up>"     . mc/mark-previous-like-this)
         ("M-S-<down>" . mc/unmark-previous-like-this)
         ("M-S-<up>"   . mc/unmark-next-like-this)
         ("M-'"        . mc/mark-all-like-this)
         ("M-_"        . mc/edit-lines)))

(use-package expand-region
  :bind ("C-+" . er/expand-region))

;; Disable selecting with Shift
(setq shift-select-mode nil)

(provide 'set-edit-mark)
