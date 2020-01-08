;;; package --- init-web-development


;;; Commentary:

;; Need install below packages from melpa:
;; web-mode, js2-mode, coffee-mode, slim-mode, sass-mode, scss-mode, less-css-mode, rainbow-mode, vue-mode, vue-html-mode, yaml-mode, origami-mode, tide


;;; Code:

;; web mode
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;; js-jsx-mode
(add-to-list 'auto-mode-alist '("\\.jsx$" . js-jsx-mode))
;; vue-mode
(add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))
;; js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
;; ;; typescript-mode
;; (add-to-list 'auto-mode-alist '("\\.tsx?\\'" . typescript-mode))


;; HTML offset indentation
(setq web-mode-markup-indent-offset 2)
;; CSS offset indentation
(setq web-mode-css-indent-offset 2)
;; Script offset indentation (for JavaScript, Java, PHP, etc.)
(setq web-mode-code-indent-offset 2)

;; CSS indention
(add-hook 'css-mode-hook
  (lambda ()
    (setq css-indent-offset 2)
    ))

;; LESS indention
(defun less-css-mode-hooks ()
  (setq indent-tabs-mode nil)
  (setq c-basic-offset 2))
(add-hook 'less-css-mode-hook 'less-css-mode-hooks)

;; coffee-mode
;; This gives you a tab of 2 spaces
(custom-set-variables '(coffee-tab-width 2))
;; automatically clean up bad whitespace
(setq whitespace-action '(auto-cleanup))
;; only show bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))

(defun scss-custom ()
  "scss-mode-hook"
  (and
    (set (make-local-variable 'css-indent-offset) 2)
    (set (make-local-variable 'scss-compile-at-save) nil)
  )
)
(add-hook 'scss-mode-hook
  '(lambda() (scss-custom)))


;; rainbow-mode
(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'sass-mode-hook 'rainbow-mode)
(add-hook 'scss-mode-hook 'rainbow-mode)
(add-hook 'less-css-mode-hook 'rainbow-mode)
;; (add-hook 'html-mode-hook 'rainbow-mode)


;; origami - text folding
(global-origami-mode t)
(global-set-key (kbd "<C-S-return>") 'origami-toggle-node)
(global-set-key (kbd "<C-M-S-return>") 'origami-toggle-all-nodes)


;; tide TypeScript interactive
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)

;; for TSX
;; (require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))

(setq typescript-indent-level 2)

;; enable typescript-tslint checker
(flycheck-add-mode 'typescript-tslint 'web-mode)



(provide 'init-web-development)

;;; init-web-development ends here
