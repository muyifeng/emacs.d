;;; package --- init-themes

;;; Commentary:

;; Packages installed (from melpa):
;; atom-one-dark, material, dracula, spaceline-theme, doom-themes

;;; Code:

;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")  ;; My own themes
;; (load-theme 'atom-one-dark t)
;; (load-theme 'spacemacs-dark t)

;; doom-themes
(defvar doom-themes-neotree-file-icons)
(use-package doom-themes
  :init
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ;; if nil, bold is universally disabled
        doom-themes-enable-italic t  ;; if nil, italics is universally disabled
        doom-themes-neotree-file-icons t)
  :config
  (load-theme 'doom-nord t)
  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

(provide 'init-themes)

;;; init-themes.el ends here
