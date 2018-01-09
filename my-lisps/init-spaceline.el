;;; package --- init-spaceline


;;; Commentary:

;; Need install below packages from melpa:
;; spaceline, spaceline-all-the-icons


;;; Code:

(use-package spaceline-config
  :config (spaceline-spacemacs-theme))

(use-package spaceline-all-the-icons
  :after spaceline
  :config (spaceline-all-the-icons-theme))

(spaceline-all-the-icons--setup-anzu)            ;; Enable anzu searching
(spaceline-all-the-icons--setup-package-updates) ;; Enable package update indicator
(spaceline-all-the-icons--setup-git-ahead)       ;; Enable # of commits ahead of upstream
(spaceline-all-the-icons--setup-paradox)         ;; Enable Paradox mode line
(spaceline-all-the-icons--setup-neotree)         ;; Enable Neotree mode line


(provide 'init-spaceline)

;;; init-spaceline ends here
