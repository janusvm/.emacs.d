;; set-company.el : settings for autocompletion with company
;; -----------------------------------------------------------------------------

(require 'company)

(setq company-idle-delay 0.5
      company-show-numbers t
      company-tooltip-flip-when-above t)

(global-company-mode t)

(provide 'set-company)
