;; set-org.el : org-mode settings
;; -----------------------------------------------------------------------------

(require 'org)
(require 'ox-latex)
(require 'org-bullets)

;; Customise LaTeX exporting
(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))
(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass[12pt,oneside]{article}
		\\usepackage{fourier}
		\\usepackage{inconsolata}
		\\usepackage[margin=3cm]{geometry}"
               ("\\section{%s}" . "\\section*{%s}")
	       ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

;; Set variables and minor modes
(setq org-log-done t)
(add-hook 'org-mode-hook 'org-indent-mode)

;; Set locally bound key for the Agenda
(add-hook 'org-mode-hook
	  '(lambda () (local-set-key (kbd "C-c a") 'org-agenda)))

;; Prettify
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(font-lock-add-keywords 'org-mode
                        '(("^ *\\([-]\\) "
                           (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

;; Code evaluation backends
(require 'ob-R)
(require 'ob-J)
(require 'ob-scheme)
(require 'ob-emacs-lisp)
(require 'ob-python)
(require 'ob-latex)

;; Code blocks
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (emacs-lisp . t)
   (scheme . t)
   (R . t)
   (J . t)
   (latex . t)
   ;;   (ditaa . t)
   ;;   (calc . t)
   ;;   (shell . t)
   ;;   (C . t)
   (python . t)
   ))

;; My J binary is called ijconsole, not jconsole
(setq org-babel-J-command "ijconsole")

;; Dont ask for execution
(setq org-confirm-babel-evaluate nil)

;; Define key command to toggle line truncation
;; (define-key org-mode-map (kbd "M-q") 'toggle-truncate-lines)

(provide 'set-org)
