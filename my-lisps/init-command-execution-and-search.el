;;; package --- init-command-execution-and-search

;;; Commentary:

;; Packages installed (from melpa):
;; ivy, flx-ido, smex, imenu-anywhere, all-the-icons-ivy

;; Ivy is split into three packages: ivy, swiper and counsel; you can simply install counsel which will bring in the other two as dependencies
;; Ivy, a generic completion mechanism for Emacs.
;; Counsel, a collection of Ivy-enhanced versions of common Emacs commands.
;; Swiper, an Ivy-enhanced alternative to isearch.

;;; Code:

;; smex
(use-package smex
  :defer t)

;; avy - for jumping to visible text using a char-based decision tree.
(use-package avy
  :defer t
  ;; :bind (("M-;" . avy-goto-char)
  ;;        ;; use ivy-avy instead of avy-goto-char since we are using ivy
  ;;        ("M-;" . ivy-avy))
  )

(use-package ivy
  :bind (("C-c r" . ivy-resume)
         ("<f6>" . ivy-resume)
         ("M-;" . ivy-avy))
  :init
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  ;; enable this if you want `swiper' to use it
  ;; (setq search-default-mode #'char-fold-to-regexp)
  ;; Enables ivy to use flx for fuzzy search: https://oremacs.com/2016/01/06/ivy-flx/
  (setq ivy-re-builders-alist
        '((t . ivy--regex-fuzzy)))
  (setq ivy-initial-inputs-alist nil)
  :config (ivy-mode 1))

(use-package swiper
  :bind ("C-f" . swiper))

(use-package counsel
  :bind (("M-a" . counsel-M-x)
         ([remap execute-extended-command] . counsel-M-x)
         ("C-o" . counsel-find-file)
         ([remap find-file] . counsel-find-file)
         ("<f1> f" . counsel-describe-function)
         ("<f1> v" . counsel-describe-variable)
         ("<f1> l" . counsel-find-library)
         ("<f2> i" . counsel-info-lookup-symbol)
         ("<f2> u" . counsel-unicode-char)
         ("C-c g" . counsel-git)
         ("C-c j" . counsel-git-grep)
         ("C-c k" . counsel-ag)
         ("C-c l" . counsel-locate)
         ("C-S-o" . counsel-rhythmbox)
         ("C-S-f" . counsel-projectile-ag)
         :map minibuffer-local-map
         ("M-S-j" . ivy-beginning-of-buffer)
         ("M-S-l" . ivy-end-of-buffer)
         ("C-r" . counsel-minibuffer-history))
  )

;; all-the-icons-ivy
(use-package all-the-icons-ivy
  :after (counsel counsel-projectile)
  :config
  (setq all-the-icons-ivy-file-commands
        '(counsel-find-file counsel-file-jump counsel-recentf counsel-projectile counsel-projectile-find-file counsel-projectile-find-dir))
  (add-hook 'after-init-hook 'all-the-icons-ivy-setup))

;; imenu-anywhere
(use-package imenu-anywhere
  :bind ("C-." . ivy-imenu-anywhere))

(provide 'init-command-execution-and-search)

;;; init-command-execution-and-search.el ends here
