;;; package --- init-web-development

;;; Commentary:

;; Packages installed (from melpa):
;; web-mode, js2-mode, sass-mode, scss-mode, less-css-mode, rainbow-mode, yaml-mode, origami-mode, tide

;;; Code:

;; javascript indentation
(defvar js-indent-level)
(setq js-indent-level 2)
;; typescript indentation
(defvar typescript-indent-level)
(setq typescript-indent-level 2)
;; CSS indentation
(defvar css-indent-offset)
(add-hook 'css-mode-hook
  (lambda ()
    (setq css-indent-offset 2)
    (setq indent-tabs-mode nil)
    ))

;; js2-mode
(use-package js2-mode
  :after flycheck
  :init
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
  ;; https://github.com/mooz/js2-mode/blob/master/js2-mode.el#L63-L67
  (add-to-list 'auto-mode-alist '("\\.jsx$" . js2-jsx-mode))
  ;; (add-to-list 'auto-mode-alist '("\\.jsx$" . js2-minor-mode))
  (setq js2-mode-show-parse-errors nil)
  (setq js2-mode-show-strict-warnings nil)
  ;; Use eslint with web-mode for jsx files
  (flycheck-add-mode 'javascript-eslint 'js2-mode))

;; sass-mode
(use-package sass-mode
  :defer t
  )

;; scss-mode
;; (defun scss-mode-custom ()
;;   "Set indentation."
;;   (and
;;     (set (make-local-variable 'css-indent-offset) 2)
;;     (set (make-local-variable 'scss-compile-at-save) nil)
;;   ))

(use-package scss-mode
  :defer t
  :init
  (add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
  ;; (add-hook 'scss-mode-hook '(lambda() (scss-mode-custom)))
  )

;; less-css-mode
(defun less-css-mode-custom ()
  "Set indentation."
  (setq indent-tabs-mode nil)
  (setq c-basic-offset 2))

(use-package less-css-mode
  :defer t
  :init
  (add-hook 'less-css-mode-hook 'less-css-mode-custom))

;; rainbow-mode
(use-package rainbow-mode
  :defer t
  :init
  (add-hook 'css-mode-hook 'rainbow-mode)
  (add-hook 'sass-mode-hook 'rainbow-mode)
  (add-hook 'scss-mode-hook 'rainbow-mode)
  (add-hook 'less-css-mode-hook 'rainbow-mode)
  ;; (add-hook 'html-mode-hook 'rainbow-mode)
  )

;; yaml-mode
(use-package yaml-mode
  :defer t
  )

;; origami - text folding
(use-package origami
  :bind (("C-S-<return>" . origami-toggle-node)
         ("C-M-S-<return>" . origami-toggle-all-nodes))
  :init (global-origami-mode t))

;; tide: TypeScript interactive
(defvar flycheck-check-syntax-automatically)
(defun setup-tide-mode ()
  "Set up tide-mode."
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency
  (company-mode +1))

(defvar company-tooltip-align-annotations)
(use-package tide
  :after flycheck
  :init
  ;; aligns annotation to the right hand side
  (setq company-tooltip-align-annotations t)
  ;; formats the buffer before saving
  (add-hook 'before-save-hook 'tide-format-before-save)
  (add-hook 'typescript-mode-hook #'setup-tide-mode))

;; web mode
(use-package web-mode
  :after (flycheck tide)
  :commands flycheck-add-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
  ;; HTML offset indentation
  (setq web-mode-markup-indent-offset 2)
  ;; CSS offset indentation
  (setq web-mode-css-indent-offset 2)
  ;; Script offset indentation (for JavaScript, Java, PHP, etc.)
  (setq web-mode-code-indent-offset 2)
  ;; enable typescript-tslint checker
  (add-hook 'web-mode-hook
             (lambda ()
              (when (string-equal "tsx" (file-name-extension buffer-file-name))
               (setup-tide-mode))))
  (flycheck-add-mode 'typescript-tslint 'web-mode)
)

(provide 'init-web-development)

;;; init-web-development.el ends here
