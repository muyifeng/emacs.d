;;; package --- init-ruby-development


;;; Commentary:

;; Need install below packages from melpa:
;; projectile-rails, robe, flymake-ruby (may use flycheck-ruby instead if there is one)


;;; Code:

;; projectile-rails - project management
(add-hook 'projectile-mode-hook 'projectile-rails-on)

;; robe - code navigation and documentation lookup
(add-hook 'ruby-mode-hook 'robe-mode)
(eval-after-load 'company
  '(push 'company-robe company-backends))

;; flymake-ruby - syntax check
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

(provide 'init-ruby-development)

;;; init-ruby-development ends here
