;;; package --- init-appearance

;;; Commentary:

;; Packages installed (from melpa):
;; all-the-icons, all-the-icons-dired, neotree, spaceline, spaceline-all-the-icons, dashboard

;;; Code:

;; all-the-icons
;; Need to run M-x all-the-icons-install-fonts after all-the-icons being installed
(use-package all-the-icons)

;; spaceline
(use-package spaceline
  :init (require 'spaceline-config)
  :config (spaceline-spacemacs-theme))

;; all-the-icons for line-mode
(use-package spaceline-all-the-icons
  :after (spaceline all-the-icons)
  :init
  (spaceline-all-the-icons-theme)
  ;; :config
  ;; (spaceline-all-the-icons--setup-anzu)            ;; Enable anzu searching
  ;; (spaceline-all-the-icons--setup-package-updates) ;; Enable package update indicator
  ;; (spaceline-all-the-icons--setup-git-ahead)       ;; Enable # of commits ahead of upstream
  ;; (spaceline-all-the-icons--setup-paradox)         ;; Enable Paradox mode line
  ;; (spaceline-all-the-icons--setup-neotree)         ;; Enable Neotree mode line
  ;; Some segments are disabled by default you can turn them on by calling the following
  ;; (spaceline-toggle-all-the-icons-bookmark-on)
  ;; (spaceline-toggle-all-the-icons-dedicated-on)
  ;; (spaceline-toggle-all-the-icons-fullscreen-on)
  (spaceline-toggle-all-the-icons-buffer-position-off)
  ;; (spaceline-toggle-all-the-icons-narrowed-on)
  ;; (setq spaceline-all-the-icons-icon-set-modified 'circle)
  ;; (setq spaceline-all-the-icons-separator-type 'arrow)
  ;; (set-face-attribute 'mode-line nil :foreground "gray" :background "#282c34" :box nil)
  ;; (set-face-attribute 'mode-line-inactive nil :foreground "SkyBlue4" :background "#282c34" :box nil)
  ;; (set-face-attribute 'powerline-active0 nil :foreground "SkyBlue1" :background "#282c34")
  ;; (set-face-attribute 'powerline-active1 nil :foreground "SkyBlue1" :background "#282c34")
  ;; (set-face-attribute 'powerline-active2 nil :foreground "white" :background "#282c34")
  ;; (set-face-attribute 'powerline-inactive0 nil :foreground "SkyBlue4" :background "#282c34")
  ;; (set-face-attribute 'powerline-inactive1 nil :foreground "SkyBlue4" :background "#282c34")
  ;; (set-face-attribute 'powerline-inactive2 nil :foreground "SkyBlue4" :background "#282c34")
  ;; (set-face-attribute 'spaceline-highlight-face nil :foreground "SkyBlue1" :background "#282c34")
  )

;; dir tree
(use-package neotree
  :defer 2
  :bind ([f8] . neotree-toggle)
  :init
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))

;; all-the-icons for dir tree
(use-package all-the-icons-dired
  :after (all-the-icons neotree)
  :init (add-hook 'dired-mode-hook 'all-the-icons-dired-mode))

;; dashboard
(use-package dashboard
  :after (all-the-icons spaceline-all-the-icons)
  :init
  (setq dashboard-startup-banner 'logo)
  (setq dashboard-set-heading-icons nil)
  (setq dashboard-set-file-icons nil)
  (setq dashboard-center-content nil)
  (setq dashboard-set-navigator nil)
  (setq dashboard-items '((recents  . 10)
                         (projects . 10)
                         (bookmarks . 5)
                         (agenda . 5)))
  :config (dashboard-setup-startup-hook))

(provide 'init-appearance)

;;; init-appearance.el ends here
