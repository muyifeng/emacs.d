;;; package name --- init-appearance

;; Packages installed (from melpa):
;; all-the-icons, all-the-icons-dired, neotree, spaceline, spaceline-all-the-icons

;; all-the-icons
;; Need to run M-x all-the-icons-install-fonts after all-the-icons being installed
(use-package all-the-icons
  :ensure t)

;; spaceline
(use-package spaceline
  :ensure t
  :init (require 'spaceline-config)
  :config (spaceline-spacemacs-theme))

;; all-the-icons for line-mode
(use-package spaceline-all-the-icons
  :ensure t
  :after (spaceline all-the-icons)
  :config
  (spaceline-all-the-icons-theme)
  (spaceline-all-the-icons--setup-anzu)            ;; Enable anzu searching
  (spaceline-all-the-icons--setup-package-updates) ;; Enable package update indicator
  (spaceline-all-the-icons--setup-git-ahead)       ;; Enable # of commits ahead of upstream
  (spaceline-all-the-icons--setup-paradox)         ;; Enable Paradox mode line
  (spaceline-all-the-icons--setup-neotree)         ;; Enable Neotree mode line
  ;; Some segments are disabled by default you can turn them on by calling the following
  ;; (spaceline-toggle-all-the-icons-bookmark-on)
  ;; (spaceline-toggle-all-the-icons-dedicated-on)
  ;; (spaceline-toggle-all-the-icons-fullscreen-on)
  (spaceline-toggle-all-the-icons-buffer-position-on)
  ;; (spaceline-toggle-all-the-icons-narrowed-on)
  (setq spaceline-all-the-icons-icon-set-modified 'circle)
  (setq spaceline-all-the-icons-separator-type 'arrow))

;; dir tree
(use-package neotree
  :ensure t
  :bind ([f8] . neotree-toggle)
  :defer t
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  ;; (setq neo-theme (if (display-graphic-p) 'icons 'ascii))
  )

;; all-the-icons for dir tree
(use-package all-the-icons-dired
  :ensure t
  :after (all-the-icons neotree)
  :config (add-hook 'dired-mode-hook 'all-the-icons-dired-mode))

(provide 'init-appearance)
