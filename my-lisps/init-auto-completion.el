;;; package --- init-auto-completion


;;; Commentary:

;; Need install below packages from melpa:
;; company, company-flx


;;; Code:

;; company-mode
(add-hook 'after-init-hook 'global-company-mode)
(setq company-selection-wrap-around t)

(eval-after-load 'company
  '(progn
    (define-key company-active-map (kbd "M-k") 'company-select-next)
    (define-key company-active-map (kbd "M-i") 'company-select-previous)))

(with-eval-after-load 'company
  (company-flx-mode +1))

(provide 'init-auto-completion)

;;; init-auto-completion ends here
