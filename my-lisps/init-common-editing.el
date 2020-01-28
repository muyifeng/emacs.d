;;; package name --- init-common-editing

;; Packages installed (from melpa):
;; textmate, smartparens, yasnippet, undo-tree

;; textmate
(use-package textmate
  :ensure t
  :bind (("M-[" . textmate-shift-left)
         ("M-]" . textmate-shift-right)
         ("M-<return>" . textmate-next-line))
  :init (textmate-mode t))

;; smartparens
(use-package smartparens
  :ensure t
  :init
  (require 'smartparens-config)
  (smartparens-global-mode t)
  (show-smartparens-global-mode t))


;; yasnippet
(use-package yasnippet
  :ensure t
  :defer 1
  :init
  (setq yas-snippet-dirs '("~/.emacs.d/snippets"                 ;; personal snippets
                          ;;  "/path/to/some/collection/"           ;; foo-mode and bar-mode snippet collection
                          ;;  "/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
                           "~/.emacs.d/yasnippet-snippets"       ;; the default collection
                          ))
  (yas-global-mode 1))

;; undo-tree-mode
(use-package undo-tree
  :ensure t
  :bind (("C-z" . undo)
         ("M-]" . textmate-shift-right)
         ("C-S-z" . redo))
  :init
  (defalias 'redo 'undo-tree-redo)
  (global-undo-tree-mode t))

(provide 'init-common-editing)
