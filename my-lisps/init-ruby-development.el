;;; package name --- init-ruby-development

;; Packages installed (from melpa):
;; projectile-rails, robe, flymake-ruby (may use flycheck-ruby instead if there is one)

;; projectile-rails - project management
(use-package projectile-rails
  :ensure t
  :after projectile
  :init
  (projectile-rails-global-mode)
  (add-hook 'projectile-mode-hook 'projectile-rails-on))

;; robe - code navigation and documentation lookup
(use-package robe
  :ensure t
  :defer 2
  :after company
  :init
  (add-hook 'ruby-mode-hook 'robe-mode)
  ;; Integrate with company-mode, has dependency on company
  '(push 'company-robe company-backends))

;; (eval-after-load 'company
;;   '(push 'company-robe company-backends))

;; flymake-ruby - syntax check
(use-package flymake-ruby
  :ensure t
  :defer 2
  :init (add-hook 'ruby-mode-hook 'flymake-ruby-load))

(provide 'init-ruby-development)
