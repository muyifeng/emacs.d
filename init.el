;;; package --- my emacs config
;; Emacs Version: 26.3

;; Start up optimization, see https://www.reddit.com/r/emacs/comments/3kqt6e/2_easy_little_known_steps_to_speed_up_emacs_start/
(setq gc-cons-threshold (* 100 1024 1024))    ;; Set GC threshold value to 100M

;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file t)

;;----------------------------------------------------------------------------
;; Use melpa repositry for package intallations
;;----------------------------------------------------------------------------
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Need to install use-package first, then all the other packages will be installed automatically by using ":ensure t" in use-package
(require 'use-package)

;;----------------------------------------------------------------------------
;; Load path .emacs.d/my-lisps
;;----------------------------------------------------------------------------
(add-to-list 'load-path (expand-file-name "my-lisps" user-emacs-directory))

;;----------------------------------------------------------------------------
;; My settings
;;----------------------------------------------------------------------------
(require 'init-general-settings)
(require 'init-themes)
(require 'init-appearance)
(require 'init-ergoemacs)
(require 'init-exec-path)
(require 'init-common-editing)
(require 'init-command-execution-and-search) ;; use ivy and swiper instead of ido and isearch
(require 'init-project-and-navigation) ;; must comes after command-execution-and-search as it has dependency on ivy
(require 'init-auto-completion)
(require 'init-syntax-checking)
;; (require 'init-ruby-development)
;; (require 'init-python-development)
(require 'init-web-development)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(package-selected-packages
   (quote
    (tide robe spaceline spaceline-all-the-icons flx-ido ergoemacs-mode all-the-icons-dired all-the-icons-ivy doom-themes material-theme origami counsel-projectile imenu-anywhere neotree markdown-mode less-css-mode json-mode js2-mode icicles ibuffer-vc flymake-ruby flycheck exec-path-from-shell dracula-theme dockerfile-mode diminish counsel company-flx coffee-mode avy atom-one-dark-theme anzu ag use-package yasnippet textmate smartparens))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
