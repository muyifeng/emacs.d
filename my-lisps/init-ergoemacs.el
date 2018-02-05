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

;; keybindings

;; bind M-/ to comment/uncomment region or line
(global-set-key [remap ergoemacs-toggle-letter-case] 'comment-or-uncomment-region-or-line)
;; bind M-S-j to move to beginning of buffer
(global-set-key [remap ergoemacs-backward-open-bracket] 'beginning-of-buffer)
;; bind M-S-l to move to end of buffer
(global-set-key [remap ergoemacs-forward-close-bracket] 'end-of-buffer)

(provide 'init-ergoemacs)

;;; init-ergoemacs ends here
