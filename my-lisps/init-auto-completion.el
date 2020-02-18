;;; package --- init-auto-completion

;;; Commentary:

;; Packages installed (from melpa):
;; company, company-anaconda

;;; Code:

;; company-mode
(use-package company
  :bind (:map company-active-map
         ("M-k" . company-select-next)
         ("M-i" . company-select-previous))
  :init
  (setq company-selection-wrap-around t)
  ;; Add company-anaconda to allowed company-mode backends list
  ;; (add-to-list 'company-backends 'company-anaconda)
  (global-company-mode))

;; Enable anaconda-mode for python-mode
;; (use-package company-anaconda
;;   :after company
;;   :init
;;   (add-hook 'python-mode-hook 'anaconda-mode)
;;   )

(provide 'init-auto-completion)

;;; init-auto-completion.el ends here
