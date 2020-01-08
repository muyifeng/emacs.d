;;; package --- init-common-third-libs


;;; Commentary:

;; Need install below packages from melpa:
;; all-the-icons, all-the-icons-dired-mode, neotree, smartparens, yasnippet, paradox, undo-tree


;;; Code:

(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

;; neotree with all-the-icons
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;; (setq neo-theme (if (display-graphic-p) 'icons 'ascii))

;; smartparens
;; (use-package smartparens-config)
(smartparens-global-mode t)
(show-smartparens-global-mode t)

;; yasnippet
(setq yas-snippet-dirs
  '("~/.emacs.d/snippets"                 ;; personal snippets
;    "/path/to/some/collection/"           ;; foo-mode and bar-mode snippet collection
;    "/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
    "~/.emacs.d/yasnippet-snippets"         ;; the default collection
    ))
(yas-global-mode 1)

;; undo-tree-mode
(global-undo-tree-mode 1)
;; make ctrl-z undo
(global-set-key (kbd "C-z") 'undo)
;; make ctrl-Z redo
(defalias 'redo 'undo-tree-redo)
(global-set-key (kbd "C-S-z") 'redo)

(provide 'init-common-third-libs)

;;; init-common-third-libs ends here
