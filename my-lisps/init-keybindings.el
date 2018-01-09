;;; package --- init-isearch


;;; Commentary:


;;; Code:

(setq mac-command-modifier 'meta)
;; (setq mac-option-modifier 'none)
(setq default-input-method "MacOSX")

(global-set-key (kbd "M-0") 'delete-window)
;; (global-set-key (kbd "M-;") 'isearch-forward)
;; (global-set-key [remap comment-dwim] 'isearch-backward)
;; (global-set-key [remap eval-expression] 'isearch-backward)
;; (define-key isearch-mode-map (kbd "M-;") 'isearch-yank-kill)
;; (define-key isearch-mode-map (kbd "M-;") 'isearch-repeat-forward)
;; (define-key isearch-mode-map (kbd "M-:") 'isearch-repeat-backward)

(global-set-key (kbd "C-SPC") 'set-mark-command)
;; (global-set-key (kbd "C-c C-c") 'comment-region)
;; (global-set-key (kbd "C-c C-u") 'uncomment-region)

(global-set-key (kbd "M-=") 'text-scale-increase)
(global-set-key (kbd "M--") 'text-scale-decrease)


(global-set-key (kbd "C-p") 'textmate-goto-symbol)
;; bind M-p to textmate-goto-symbol
;; (global-set-key [remap ergoemacs-print-buffer-confirm] 'textmate-goto-symbol)
(global-set-key [remap pr-interface] 'textmate-goto-symbol)
;; bind M-/ to comment/uncomment region or line
(global-set-key [remap ergoemacs-toggle-letter-case] 'comment-or-uncomment-region-or-line)
;; bind M-S-j to move to beginning of buffer
(global-set-key [remap ergoemacs-backward-open-bracket] 'beginning-of-buffer)
;; bind M-S-l to move to end of buffer
(global-set-key [remap ergoemacs-forward-close-bracket] 'end-of-buffer)

;; projectile
(global-set-key [remap ergoemacs-call-keyword-completion] 'projectile-find-file)
(global-set-key (kbd "M-p") 'projectile-ibuffer)

(provide 'init-keybindings)

;;; init-keybindings ends here
