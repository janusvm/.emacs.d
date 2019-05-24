;; set-prog-J.el : settings for the J langauge
;; -----------------------------------------------------------------------------

(use-package j-mode
  :config
  (setq j-console-cmd "j9"
        j-console-cmd-args '("-c"))
  (set-face-attribute 'j-verb-face nil        :foreground "#ebcb8b")
  (set-face-attribute 'j-adverb-face nil      :foreground "#a3be8c")
  (set-face-attribute 'j-conjunction-face nil :foreground "#88c0d0")
  (set-face-attribute 'j-other-face nil       :foreground "#d08770"))

(provide 'set-prog-J)
