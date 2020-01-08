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

;; Some segments are disabled by default you can turn them on by calling the following
; (spaceline-toggle-all-the-icons-bookmark-on)
;; (spaceline-toggle-all-the-icons-dedicated-on)
; (spaceline-toggle-all-the-icons-fullscreen-on)
(spaceline-toggle-all-the-icons-buffer-position-on)
; (spaceline-toggle-all-the-icons-narrowed-on)
(setq spaceline-all-the-icons-icon-set-modified 'circle)
; (setq spaceline-all-the-icons-separator-type 'arrow)
(setq spaceline-all-the-icons-separator-type 'arrow)

(set-face-attribute 'mode-line nil :foreground "gray" :background "#282c34" :box nil)
(set-face-attribute 'mode-line-inactive nil :foreground "SkyBlue4" :background "#282c34" :box nil)
(set-face-attribute 'powerline-active0 nil :foreground "SkyBlue1" :background "#282c34")
(set-face-attribute 'powerline-active1 nil :foreground "SkyBlue1" :background "#282c34")
(set-face-attribute 'powerline-active2 nil :foreground "white" :background "#282c34")
(set-face-attribute 'powerline-inactive0 nil :foreground "SkyBlue4" :background "#282c34")
(set-face-attribute 'powerline-inactive1 nil :foreground "SkyBlue4" :background "#282c34")
(set-face-attribute 'powerline-inactive2 nil :foreground "SkyBlue4" :background "#282c34")
(set-face-attribute 'spaceline-highlight-face nil :foreground "SkyBlue1" :background "#282c34")

(provide 'init-spaceline)

;;; init-spaceline ends here
