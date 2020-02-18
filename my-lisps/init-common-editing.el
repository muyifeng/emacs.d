;;; package --- init-common-editing

;;; Commentary:

;; Packages installed (from melpa):
;; textmate, smartparens, yasnippet, undo-tree

;;; Code:

;; textmate
(use-package textmate
  :bind (("M-[" . textmate-shift-left)
         ("M-]" . textmate-shift-right)
         ("M-<return>" . textmate-next-line))
  :config (textmate-mode t))

;; smartparens
(use-package smartparens
  :defer t
  :init (require 'smartparens-config)
  :config
  (smartparens-global-mode t)
  (show-smartparens-global-mode t))

;; yasnippet
(use-package yasnippet
  :defer 2
  :init
  (setq yas-snippet-dirs '("~/.emacs.d/snippets"                 ;; personal snippets
                          ;;  "/path/to/some/collection/"           ;; foo-mode and bar-mode snippet collection
                          ;;  "/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
                           "~/.emacs.d/yasnippet-snippets"       ;; the default collection
                          ))
  (yas-global-mode 1))

;; undo-tree-mode
(use-package undo-tree
  :bind (("C-z" . undo)
         ("C-S-z" . redo))
  :init
  (defalias 'redo 'undo-tree-redo)
  (global-undo-tree-mode t))

(provide 'init-common-editing)

;;; init-common-editing.el ends here
