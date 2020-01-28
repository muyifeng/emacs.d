;;; package name --- init-ergoemacs

;; Packages installed (from melpa):
;; ergoemacs-mode

(use-package ergoemacs-mode
  :ensure t
  :bind (
         ;; bind M-S-j to move to beginning of buffer
         ("M-S-j" . beginning-of-buffer)
         ;; ([remap ergoemacs-backward-open-bracket] . beginning-of-buffer)
         ;; bind M-S-l to move to end of buffer
         ("M-S-l" . end-of-buffer))
         ;; ([remap ergoemacs-forward-close-bracket] . end-of-buffer))
  :init
  (setq ergoemacs-theme nil)
  (setq ergoemacs-keyboard-layout "us")
  (ergoemacs-mode 1)
  :config
  (global-set-key (kbd "M-/") 'comment-or-uncomment-region-or-line))

(provide 'init-ergoemacs)
