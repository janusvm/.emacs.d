;; set-packages.el : initialize packages
;; -----------------------------------------------------------------------------

(require 'package)

(setq package-archives
      '(("GNU ELPA"     . "https://elpa.gnu.org/packages/")
        ("MELPA Stable" . "https://stable.melpa.org/packages/")
        ("MELPA"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("MELPA Stable" . 10)
        ("GNU ELPA"     . 5)
        ("MELPA"        . 0)))


(package-initialize)
(setq package-enable-at-startup nil)

(unless package-archive-contents
  (package-refresh-contents))

;; List of packages to be automatically installed on a fresh Emacs
(setq packages-list
      '(
        ag
        all-the-icons
        auctex
	auctex-latexmk
	avy
	company
	counsel
	counsel-projectile
	exec-path-from-shell
	ess
	ess-R-data-view
	expand-region
        fancy-battery
	haskell-mode
	ibuffer-projectile
	lispy
	magit
	markdown-mode
	multiple-cursors
        neotree
        nord-theme
        pdf-tools
        poly-R
	poly-markdown
	projectile
        rainbow-delimiters
        spaceline
        spaceline-all-the-icons
	sql-indent
        yaml-mode
        yasnippet
	))

(dolist (package packages-list)
  (unless (package-installed-p package)
    (package-install package)))

(provide 'set-packages)
