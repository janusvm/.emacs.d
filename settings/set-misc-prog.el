;; set-misc-prog.el : miscellaneous programming language settings
;; -----------------------------------------------------------------------------

;; J
(require 'j-mode)
(setq j-console-cmd "ijconsole")
(set-face-attribute 'j-verb-face nil :foreground "#ebcb8b")
(set-face-attribute 'j-adverb-face nil :foreground "#a3be8c")
(set-face-attribute 'j-conjunction-face nil :foreground "#88c0d0")
(set-face-attribute 'j-other-face nil :foreground "#d08770")

(provide 'set-misc-prog)
