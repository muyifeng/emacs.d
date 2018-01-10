;;; package --- init-textmate


;;; Commentary:

;; Need install below packages from melpa:
;; textmate


;;; Code:

(textmate-mode)

;; keybindings
;; (global-set-key (kbd "M-I") 'textmate-goto-symbol)
(global-set-key (kbd "M-[") 'textmate-shift-left)
(global-set-key (kbd "M-]") 'textmate-shift-right)
(global-set-key (kbd "M-<return>") 'textmate-next-line)

;; resolve keybinding conflicts
(global-set-key (kbd "C-p") 'textmate-goto-symbol)
(global-set-key [remap pr-interface] 'textmate-goto-symbol)

(provide 'init-textmate)

;;; init-textmate ends here
