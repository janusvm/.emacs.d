;; latex.el --- LaTeX editing

(require 'reftex)

;; Associate .tex files with AUCTeX instead of the default latex mode
(add-to-list 'auto-mode-alist '("\\.tex$" . LaTeX-mode))

;; Set some variables
(setq TeX-auto-save t
      TeX-parse-self t
      TeX-electric-sub-and-superscript t
      latex-run-command "pdflatex"
      LaTeX-electric-left-right-brace t)
(setq-default TeX-master nil)

;; Use \(...\) for inline math instead of $...$
(add-hook 'LaTeX-mode-hook
	(lambda () (set (make-variable-buffer-local 'TeX-electric-math)
			(cons "\\(" "\\)"))))

;; Have math minor mode on by default
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

;; Use reftex
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook
	  (lambda () (setq reftex-plug-into-AUCTeX t)))
(setq reftex-bibliography-commands '("bibliography" "nobibliography" "addbibresource"))

;; Add Make to list of compile commands and set as default
;; (to use with initpaper script)
(eval-after-load "tex"
  '(add-to-list 'TeX-command-list '("Make" "make" TeX-run-command nil t)))
(add-hook 'LaTeX-mode-hook
	  (lambda () (setq TeX-command-default "Make")))

