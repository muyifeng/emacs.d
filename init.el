;;; package --- my emacs config


;;; Commentary:

;; Emacs Version: 25.2


;;; Code:

;;----------------------------------------------------------------------------
;; Load path .emacs.d/my-lisps
;;----------------------------------------------------------------------------
(add-to-list 'load-path (expand-file-name "my-lisps" user-emacs-directory))

;;----------------------------------------------------------------------------
;; Change emacs appearance immediately
;;----------------------------------------------------------------------------
(setq frame-title-format "%b - ericyang@emacs")         ; Use buffer name as frame title
(set-language-environment "UTF-8")                      ; UTF-8 as default encoding
(tool-bar-mode -1)                                      ; No toolbar
(menu-bar-mode -1)                                      ; No menubar
(scroll-bar-mode -1)                                    ; No scrollbar
(global-linum-mode t)                                   ; Show line numbers on buffers

;; set line height
(setq-default line-spacing 3)

;; set a default font
(when (member "Source Code Pro" (font-family-list))
  (set-face-attribute 'default nil :font "Source Code Pro")
  (add-to-list 'initial-frame-alist '(font . "Source Code Pro 12"))
  (add-to-list 'default-frame-alist '(font . "Source Code Pro 12")))


;;----------------------------------------------------------------------------
;; Use melpa repositry for package intallations
;;----------------------------------------------------------------------------
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)


;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------
;;(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
;;(when (file-exists-p custom-file)
;;  (load custom-file))
; (setq shift-select-mode t)


(require 'init-spaceline)
(require 'init-textmate)

;; Ergoemacs need to be loaded after customize, other wise there may be some problems.
(require 'init-ergoemacs)

(require 'init-common-third-libs)
(require 'init-exec-path)
(require 'init-grep)
(require 'init-ibuffer)
(require 'init-ido)
(require 'init-isearch)
;; (require 'init-ivy-and-swiper) ;; use ivy and swiper instead of ido and isearch
(require 'init-auto-completion)
(require 'init-misc)
(require 'init-recentf)
(require 'init-themes)
(require 'init-flycheck)
(require 'init-ruby-development)
(require 'init-web-development)


;;----------------------------------------------------------------------------
;; Require my own configurations
;;----------------------------------------------------------------------------
(require 'init-alias)
(require 'init-keybindings)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(package-selected-packages
   (quote
    (counsel company-flx flx-isearch flx-ido flymake-ruby robe ace-jump-mode textmate yasnippet yaml-mode wgrep-ag web-mode vue-mode use-package spacemacs-theme spaceline-all-the-icons smex smartparens slim-mode scss-mode sass-mode rainbow-mode projectile-rails neotree markdown-mode less-css-mode json-mode js2-mode idomenu ido-yes-or-no icicles ibuffer-vc flycheck exec-path-from-shell ergoemacs-mode dracula-theme dockerfile-mode diminish company coffee-mode atom-one-dark-theme anzu ag))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; init.el ends here