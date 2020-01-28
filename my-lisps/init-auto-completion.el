;;; package name --- init-auto-completion

;; Packages installed (from melpa):
;; company, company-anaconda

;; company-mode
(use-package company
  :ensure t
  :bind (:map company-active-map
         ("M-k" . company-select-next)
         ("M-i" . company-select-previous))
  :init
  (global-company-mode)
  :config
  (setq company-selection-wrap-around t)
  ;; Add company-anaconda to allowed company-mode backends list
  ;; (add-to-list 'company-backends 'company-anaconda)
  )

;; Enable anaconda-mode for python-mode
;; (use-package company-anaconda
;;   :ensure t
;;   :after company
;;   :init
;;   (add-hook 'python-mode-hook 'anaconda-mode)
;;   )

(provide 'init-auto-completion)
