;; set-edit-org.el : org-mode settings
;; -----------------------------------------------------------------------------

(use-package org
  :mode (("\\.org$" . org-mode))
  :hook ((org-mode . org-indent-mode))
  :bind (:map org-mode-map
              ("C-c a" . org-agenda))
  :config
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     (lisp . t)
     (scheme . t)
     (R . t)
     (latex . t)
     (python . t)))
  (setq org-confirm-babel-evaluate nil))

(use-package ox-latex
  :config
  (add-to-list 'org-latex-classes
             '("article"
               "\\documentclass[12pt,a4paper,oneside]{article}
		\\usepackage{fourier}
		\\usepackage{inconsolata}
		\\usepackage[margin=3cm]{geometry}"
               ("\\section{%s}" . "\\section*{%s}")
	       ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))

(provide 'set-edit-org)
