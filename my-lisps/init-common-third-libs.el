;;; package --- init-common-third-libs


;;; Commentary:

;; Need install below packages from melpa:
;; all-the-icons, neotree, smartparens, projectile, yasnippet, paradox, undo-tree, avy


;;; Code:

;; neotree with all-the-icons
(global-set-key [f8] 'neotree-toggle)
;; (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(setq neo-theme (if (display-graphic-p) 'icons 'ascii))

;; smartparens
;; (use-package smartparens-config)
(smartparens-global-mode t)
(show-smartparens-global-mode t)

;; projectile
(projectile-global-mode)
(global-set-key [remap ergoemacs-call-keyword-completion] 'projectile-find-file)
(global-set-key (kbd "C-b") 'projectile-ibuffer)

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

;; avy - for jumping to visible text using a char-based decision tree.
;; (global-set-key (kbd "C-;") 'avy-goto-char)
(global-set-key (kbd "C-;") 'ivy-avy) ;; use ivy-avy instead of avy-goto-char since we are using ivy

(provide 'init-common-third-libs)

;;; init-common-third-libs ends here
