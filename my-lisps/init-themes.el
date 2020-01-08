;;; package --- init-themes


;;; Commentary:

;; Need install below packages from melpa:
;; atom-one-dark, material, dracula, spaceline-theme, doom-themes


;;; Code:

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; (load-theme 'atom-one-dark t)
;; (load-theme 'material t)
;; (load-theme 'dracula t)
;; (load-theme 'spacemacs-dark t)

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
(load-theme 'doom-one t)
;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)
;; Enable custom neotree theme
(doom-themes-neotree-config)  ; all-the-icons fonts must be installed!
(setq doom-neotree-file-icons t)
;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)

(provide 'init-themes)

;;; init-themes ends here
