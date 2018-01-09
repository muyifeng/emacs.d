;;; package --- init-ergoemacs


;;; Commentary:

;; Need install below packages from melpa:
;; ergoemacs-mode


;;; Code:

;; (use-package ergoemacs-mode
;;   :init
;;   (setq ergoemacs-theme nil)
;;   (setq ergoemacs-keyboard-layout "us")
;;   :config
;;   (ergoemacs-mode 1))

;; (require 'ergoemacs-mode)
(setq ergoemacs-theme nil)
(setq ergoemacs-keyboard-layout "us")
(ergoemacs-mode 1)

(provide 'init-ergoemacs)

;;; init-ergoemacs ends here
