;;; package name --- init-project-and-navigation

;; Has dependency on ivy

;; Packages installed (from melpa):
;; projectile, counsel-projectile-mode, avy

;; projectile
(use-package projectile
  :ensure t
  :defer 2
  :after ivy
  :bind (("C-b" . projectile-ibuffer)
         ([remap ergoemacs-call-keyword-completion] . projectile-find-file)
         :map projectile-mode-map
         ("s-p" . projectile-command-map)
         :map projectile-mode-map
         ("C-c p" . projectile-command-map))
  :init
  ;; Use ivy as projectile's completion system
  (setq projectile-completion-system 'ivy)
  (projectile-global-mode)
  (projectile-mode +1))

;; counsel-projectile: provides further ivy integration into projectile
(use-package counsel-projectile
  :ensure t
  :after (projectile counsel)
  :bind (("M-t" . counsel-projectile)
         ([remap ergoemacs-call-keyword-completion] . counsel-projectile))
  :init (counsel-projectile-mode 1))

;; avy - for jumping to visible text using a char-based decision tree.
(use-package avy
  :ensure t
  :defer 2
  :after ivy
  :bind (("M-;" . avy-goto-char)
         ;; use ivy-avy instead of avy-goto-char since we are using ivy
         ("M-;" . ivy-avy)))

(provide 'init-project-and-navigation)
