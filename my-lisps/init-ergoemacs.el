;;; package --- init-ergoemacs

;;; Commentary:

;; Packages installed (from melpa):
;; ergoemacs-mode

;;; Code:

;; comment-or-uncomment-region-or-line
(defun comment-or-uncomment-region-or-line ()
    "Comments or uncomments the region or the current line if there's no active region."
    (interactive)
    (let (beg end)
        (if (region-active-p)
            (setq beg (region-beginning) end (region-end))
            (setq beg (line-beginning-position) end (line-end-position)))
        (comment-or-uncomment-region beg end)))

;; ergoemacs-mode
(use-package ergoemacs-mode
  :bind (("M-j" . backward-char)
         ("M-S-j" . beginning-of-buffer)
         ("M-l" . forward-char)
         ("M-S-l" . end-of-buffer)
         ("M-/" . comment-or-uncomment-region-or-line))
  :init
  (setq ergoemacs-theme nil)
  (setq ergoemacs-keyboard-layout "us")
  (add-hook 'emacs-startup-hook #'ergoemacs-mode))

(provide 'init-ergoemacs)

;;; init-ergoemacs.el ends here
