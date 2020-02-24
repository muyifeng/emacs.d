;;; package --- my emacs config

;;; Commentary:
;; Emacs Version: 26.3

;;; Code:

;; Start up optimization, see https://www.reddit.com/r/emacs/comments/3kqt6e/2_easy_little_known_steps_to_speed_up_emacs_start/
;; Speed up startup
(defvar normal-gc-cons-threshold (* 80 1024 1024))
(defvar most-positive-gc-cons-threshold (* 200 1024 1024))  ;; Set GC threshold limit value to 200M
(defvar default-file-name-handler-alist file-name-handler-alist)

(setq file-name-handler-alist nil)
(setq gc-cons-threshold most-positive-gc-cons-threshold)

;; (add-hook 'emacs-startup-hook
(add-hook 'after-init-hook
          (lambda ()
            "Restore defalut values after startup."
            (setq file-name-handler-alist default-file-name-handler-alist)
            (setq gc-cons-threshold normal-gc-cons-threshold)

            ;; Avoid GCs while using `ivy'/`counsel'/`swiper' and `helm', etc.
            ;; @see http://bling.github.io/blog/2016/01/18/why-are-you-changing-gc-cons-threshold/
            (defun my-minibuffer-setup-hook ()
              "Set gc threshold limit to most positive number when minibuffer is open."
              (setq gc-cons-threshold most-positive-gc-cons-threshold))

            (defun my-minibuffer-exit-hook ()
              "Set gc threshold limit back to default value when exiting minibuffer."
              (setq gc-cons-threshold normal-gc-cons-threshold))

            (add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
            (add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)))

;;----------------------------------------------------------------------------
;; Load path .emacs.d/my-lisps
;;----------------------------------------------------------------------------
(push (expand-file-name "my-lisps" user-emacs-directory) load-path)

;;----------------------------------------------------------------------------
;; My settings
;;----------------------------------------------------------------------------
(require 'init-custom)
(require 'init-package)
(require 'init-general-settings)
(require 'init-themes)
(require 'init-appearance)
(require 'init-exec-path)
(require 'init-ergoemacs)
(require 'init-common-editing)
(require 'init-project-and-navigation) ;; must comes after command-execution-and-search as it has dependency on ivy
(require 'init-command-execution-and-search) ;; use ivy and swiper instead of ido and isearch
(require 'init-auto-completion)
(require 'init-syntax-checking)
;; (require 'init-ruby-development)
;; (require 'init-python-development)
(require 'init-web-development)

;;; init.el ends here

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(package-selected-packages
   (quote
    (tide robe flx-ido all-the-icons-dired all-the-icons-ivy doom-themes material-theme origami counsel-projectile imenu-anywhere neotree markdown-mode less-css-mode json-mode js2-mode icicles ibuffer-vc flymake-ruby flycheck exec-path-from-shell dracula-theme dockerfile-mode diminish counsel company-flx coffee-mode avy atom-one-dark-theme anzu ag use-package yasnippet textmate smartparens))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
