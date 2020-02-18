;;; package --- init-package

;;; Commentary:

;; Packages installed (from melpa):
;; use-package

;;; Code:

;;----------------------------------------------------------------------------
;; Use melpa repositry for package intallations
;;----------------------------------------------------------------------------
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; Initialize packages
(unless (bound-and-true-p package--initialized)  ;; To avoid warnings in 27
  (setq package-enable-at-startup nil)           ;; To prevent initializing twice
  (package-initialize))

;; Setup `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Should set before loading `use-package'
(eval-and-compile
  (setq use-package-always-ensure t)
  ;; be careful of using this while using :after keyword
  ;; see: https://github.com/jwiegley/use-package/blob/4b58ab78177f636f862a66c7a8fdcf9b070e0925/use-package.org#after
  ;; (setq use-package-always-defer t)
  (setq use-package-expand-minimally t)
  (setq use-package-enable-imenu-support t))

(eval-when-compile
  (require 'use-package))

(provide 'init-package)

;;; init-package.el ends here
