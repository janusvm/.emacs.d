;; shell.el --- Fixes and stuff for shell-related problems

;; Set $MANPATH, $PATH and exec-path from shell
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; Add other variables
(exec-path-from-shell-copy-env "ENTSOE_API_TOKEN")

