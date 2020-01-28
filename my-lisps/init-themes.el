;;; package name --- init-themes

;; Packages installed (from melpa):
;; atom-one-dark, material, dracula, spaceline-theme, doom-themes

;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")  ;; My own themes

;; (load-theme 'atom-one-dark t)
;; (load-theme 'spacemacs-dark t)

;; doom-themes
(use-package doom-themes
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-nord t)
  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  (setq doom-themes-neotree-file-icons t)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

(provide 'init-themes)
