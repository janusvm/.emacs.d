;; hydra-ess.el : hydra for ess-mode
;; -----------------------------------------------------------------------------

;; TODO: hydras for ESS

;; Goal: provide an overview of the vast selection of commands in ESS for
;; interactive use

;; Split into main, dev, doc, and extra, according to defined keymaps.
;; Main is the entry point from which the other hydras will be called.

(defhydra hydra-ess-main ()
  "ESS commands"

  ("h" backward-char "left" :column "Movement")
  ("l" forward-char "right" :column "Movement")
  ("k" (forward-line -1) "up" :column "Movement")
  ("j" (forward-line  1) "down" :column "Movement")
  ("H" backward-word "back" :column "Movement")
  ("L" forward-word "forward" :column "Movement")
  ("K" (forward-paragraph -1) "up par" :column "Movement")
  ("J" (forward-paragraph  1) "down par" :column "Movement")

  ("c" ess-eval-region-or-function-or-paragraph-and-step "auto" :column "Eval")
  ("b" ess-eval-buffer "buffer" :column "Eval")
  ("f" ess-eval-function "function" :column "Eval")
  ("r" ess-eval-region "region" :column "Eval")
  ("n" ess-eval-line-visibly-and-step "line" :column "Eval")
  ("p" ess-eval-paragraph-and-step "paragraph" :column "Eval")

  ("s" ess-switch-process "switch process" :column "Process")
  ("z" ess-switch-to-inferior-or-script-buffer "goto inferior" :color blue :column "Process")

  ("t" hydra-ess-dev/body "dev" :color blue :column "Modes")
  ("d" hydra-ess-doc/body "doc" :color blue :column "Modes")
  ("e" hydra-ess-extra/body "extra" :color blue :column "Modes")

  ("q" nil "quit" :column nil))
;; C-c C-b         ess-eval-buffer
;; C-c C-c         ess-eval-region-or-function-or-paragraph-and-step
;; C-c C-d         ess-doc-map
;; C-c C-e         ess-extra-map
;; C-c C-f         ess-eval-function
;; C-c C-j         ess-eval-line
;; C-c C-k         ess-force-buffer-current
;; C-c C-l         ess-load-file
;; C-c C-n         ess-eval-line-visibly-and-step
;; C-c C-p         ess-eval-paragraph-and-step
;; C-c C-q         ess-quit
;; C-c C-r         ess-eval-region
;; C-c C-s         ess-switch-process
;; C-c C-t         ess-dev-map
;; C-c C-v         ess-display-help-on-object
;; C-c C-z         ess-switch-to-inferior-or-script-buffer
;; C-c ESC         Prefix Command
;; C-c `           ess-show-traceback
;; C-c ~           ess-show-call-stack
;; C-c C-=         ess-cycle-assign
;; C-c <C-down>    ess-eval-buffer-from-here-to-end
;; C-c <C-up>      ess-eval-buffer-from-beg-to-here
;; C-c <tab>       my/R-pipe-op
;; C-c M-b         ess-eval-buffer-and-go
;; C-c M-f         ess-eval-function-and-go
;; C-c M-j         ess-eval-line-and-go
;; C-c M-l         ess-load-file
;; C-c M-p         ess-eval-paragraph-and-go
;; C-c M-r         ess-eval-region-and-go


(defhydra hydra-ess-dev ()
  "ESS dev"
  ("q" nil "quit"))
;; C-c C-t C-b     ess-bp-set
;; C-c C-t C-d     ess-debug-flag-for-debugging
;; C-c C-t C-e     ess-debug-toggle-error-action
;; C-c C-t C-k     ess-bp-kill-all
;; C-c C-t C-l     ess-bp-set-logger
;; C-c C-t C-n     ess-bp-next
;; C-c C-t C-o     ess-bp-toggle-state
;; C-c C-t C-p     ess-bp-previous
;; C-c C-t C-s     ess-r-set-evaluation-env
;; C-c C-t C-u     ess-debug-unflag-for-debugging
;; C-c C-t C-w     ess-watch
;; C-c C-t 0 .. C-c C-t 9          ess-electric-selection
;; C-c C-t ?       ess-tracebug-show-help
;; C-c C-t B       ess-bp-set-conditional
;; C-c C-t I       ess-debug-goto-input-event-marker
;; C-c C-t K       ess-bp-kill-all
;; C-c C-t L       ess-bp-set-logger
;; C-c C-t T       ess-toggle-tracebug
;; C-c C-t `       ess-show-traceback
;; C-c C-t b       ess-bp-set
;; C-c C-t d       ess-debug-flag-for-debugging
;; C-c C-t e       ess-debug-toggle-error-action
;; C-c C-t i       ess-debug-goto-input-event-marker
;; C-c C-t k       ess-bp-kill
;; C-c C-t l       ess-r-devtools-load-package
;; C-c C-t n       ess-bp-next
;; C-c C-t o       ess-bp-toggle-state
;; C-c C-t p       ess-bp-previous
;; C-c C-t s       ess-r-set-evaluation-env
;; C-c C-t u       ess-debug-unflag-for-debugging
;; C-c C-t w       ess-watch
;; C-c C-t ~       ess-show-call-stack
;; C-c C-t C-S-b   ess-bp-set-conditional
;; C-c C-t C-S-d   ess-debug-unflag-for-debugging


(defhydra hydra-ess-doc ()
  "ESS doc"
  ("q" nil "quit"))
;; C-c C-d C-a     ess-display-help-apropos
;; C-c C-d C-d     ess-display-help-on-object
;; C-c C-d C-e     ess-describe-object-at-point
;; C-c C-d TAB     ess-display-package-index
;; C-c C-d RET     ess-manual-lookup
;; C-c C-d C-o     ess-display-demos
;; C-c C-d C-r     ess-reference-lookup
;; C-c C-d C-v     ess-display-vignettes
;; C-c C-d C-w     ess-help-web-search
;; C-c C-d a       ess-display-help-apropos
;; C-c C-d d       ess-display-help-on-object
;; C-c C-d e       ess-describe-object-at-point
;; C-c C-d i       ess-display-package-index
;; C-c C-d m       ess-manual-lookup
;; C-c C-d o       ess-display-demos
;; C-c C-d r       ess-reference-lookup
;; C-c C-d v       ess-display-vignettes
;; C-c C-d w       ess-help-web-search


(defhydra hydra-ess-extra ()
  "ESS extra"
  ("q" nil "quit"))
;; C-c C-e C-d     ess-dump-object-into-edit-buffer
;; C-c C-e C-e     ess-execute
;; C-c C-e TAB     ess-install-library
;; C-c C-e C-l     ess-load-library
;; C-c C-e C-r     inferior-ess-reload
;; C-c C-e C-s     ess-set-style
;; C-c C-e C-t     ess-build-tags-for-directory
;; C-c C-e C-w     ess-execute-screen-options
;; C-c C-e /       ess-set-working-directory
;; C-c C-e d       ess-dump-object-into-edit-buffer
;; C-c C-e e       ess-execute
;; C-c C-e i       ess-install-library
;; C-c C-e l       ess-load-library
;; C-c C-e r       inferior-ess-reload
;; C-c C-e s       ess-set-style
;; C-c C-e t       ess-build-tags-for-directory
;; C-c C-e w       ess-execute-screen-options


(provide 'hydra-ess)
