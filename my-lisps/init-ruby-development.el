;;; package --- init-ruby-development

;;; Commentary:

;; Packages installed (from melpa):
;; projectile-rails, robe, flymake-ruby (may use flycheck-ruby instead if there is one)

;;; Code:

;; projectile-rails - project management
(use-package projectile-rails
  :ensure t
  :after projectile
  :hook ((projectile-mode) . projectile-rails-on)
  :init
  (projectile-rails-global-mode)
  ;; (add-hook 'projectile-mode-hook 'projectile-rails-on)
  )

;; robe - code navigation and documentation lookup
(use-package robe
  :ensure t
  :after company
  :hook ((ruby-mode) . robe-mode)
  :init
  ;; (add-hook 'ruby-mode-hook 'robe-mode)
  ;; Integrate with company-mode, has dependency on company
  '(push 'company-robe company-backends))

;; (eval-after-load 'company
;;   '(push 'company-robe company-backends))

;; flymake-ruby - syntax check
(use-package flymake-ruby
  :ensure t
  :defer t
  :hook ((ruby-mode) . flymake-ruby-load))
  ;; :init (add-hook 'ruby-mode-hook 'flymake-ruby-load))

(provide 'init-ruby-development)

;;; init-ruby-development.el ends here
