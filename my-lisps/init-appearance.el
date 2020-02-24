;;; package --- init-appearance

;;; Commentary:

;; Packages installed (from melpa):
;; all-the-icons, all-the-icons-dired, neotree, doom-modeline, dashboard, nyan-mode, beacon, smooth-scrolling

;;; Code:

;; nyan-mode
(use-package nyan-mode
  :init
  ;; (setq mode-line-format (list '(:eval (list (nyan-create)))))
  (setq nyan-animate-nyancat t)
  (nyan-mode 1)
  )

;; beacon
(use-package beacon
  :init (beacon-mode 1))

;; smooth-scrolling
(use-package smooth-scrolling
  :init (smooth-scrolling-mode 1))

;; all-the-icons
;; Need to run M-x all-the-icons-install-fonts after all-the-icons being installed
(use-package all-the-icons)

;; doom-modeline
(use-package doom-modeline
  :after (all-the-icons)
  :init
  (setq doom-modeline-buffer-file-name-style 'truncate-upto-project)
  (setq doom-modeline-icon (display-graphic-p))
  (setq doom-modeline-major-mode-icon t)
  (setq doom-modeline-major-mode-color-icon t)
  (setq doom-modeline-buffer-state-icon t)
  (setq doom-modeline-buffer-modification-icon t)
  (setq doom-modeline-unicode-fallback nil)
  ;; (setq doom-modeline-minor-modes nil)
  (setq doom-modeline-indent-info t)
  (setq doom-modeline-persp-name t)
  (setq doom-modeline-lsp t)
  (setq doom-modeline-env-version t)
  ;; (setq doom-modeline-env-enable-python t)
  ;; (setq doom-modeline-env-enable-ruby t)
  ;; (setq doom-modeline-env-enable-go t)
  ;; (setq doom-modeline-env-python-executable "python") ; or `python-shell-interpreter'
  ;; (setq doom-modeline-env-ruby-executable "ruby")
  ;; (setq doom-modeline-env-go-executable "go")
  (setq doom-modeline-env-load-string "...")
  (doom-modeline-mode 1)
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
  :after (all-the-icons)
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
