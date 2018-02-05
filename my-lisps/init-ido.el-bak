;;; package --- init-ido


;;; Commentary:

;; Need install below packages from melpa:
;; ido-completing-read+, smex, idomenu, ido-yes-or-no-mode, flx-ido


;;; Code:

;; ido
(ido-mode 1)
(ido-everywhere 1) ; use ido-mode everywhere, in buffers and for finding files
(flx-ido-mode 1) ; enbale flx-ido
(setq ido-enable-flex-matching t) ; flexibly match names via fuzzy matching
(setq ido-use-filename-at-point nil)
(setq ido-auto-merge-work-directories-length -1)
(setq ido-use-virtual-buffers t)
;; disable ido faces to see flx highlights.
;; (setq ido-use-faces nil)

;; ido-completing-read+
;; (use-package ido-completing-read+)
;; (ido-ubiquitous-mode 1)

;; ido-yes-or-no-mode
(ido-yes-or-no-mode 1)

;; Use smex to handle M-x
(smex-initialize)
(global-set-key (kbd "M-a") 'smex)
(global-set-key (kbd "M-A") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(setq smex-save-file (expand-file-name ".smex-items" user-emacs-directory)) ; Change path for ~/.smex-items
(global-set-key [remap execute-extended-command] 'smex)

;; Allow the same buffer to be open in different frames
(setq ido-default-buffer-method 'selected-window)

;; http://www.reddit.com/r/emacs/comments/21a4p9/use_recentf_and_ido_together/cgbprem
(add-hook 'ido-setup-hook (lambda () (define-key ido-completion-map [up] 'previous-history-element)))

(when ido-mode
  (global-set-key [remap ido-magic-forward-char] 'ido-next-match)
  (global-set-key [remap ido-magic-backward-char] 'ido-prev-match))

(provide 'init-ido)

;;; init-ido ends here
