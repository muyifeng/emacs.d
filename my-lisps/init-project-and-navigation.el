;;; package --- init-project-and-navigation

;;; Commentary:

;; Has dependency on ivy
;; Packages installed (from melpa):
;; projectile, counsel-projectile-mode, avy

;;; Code:

;; projectile
(use-package projectile
  :bind (("C-b" . projectile-ibuffer)
         ([remap ergoemacs-call-keyword-completion] . projectile-find-file)
         :map projectile-mode-map
         ("s-p" . projectile-command-map)
         :map projectile-mode-map
         ("C-c p" . projectile-command-map))
  :init
  ;; Use ivy as projectile's completion system
  (setq projectile-completion-system 'ivy)
  (projectile-mode +1))

;; counsel-projectile: provides further ivy integration into projectile
(use-package counsel-projectile
  :bind (("M-t" . counsel-projectile-find-file)
         ([remap ergoemacs-call-keyword-completion] . counsel-projectile-find-file))
  :init (counsel-projectile-mode 1))

(provide 'init-project-and-navigation)

;;; init-project-and-navigation.el ends here
