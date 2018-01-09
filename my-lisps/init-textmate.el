;;; package --- init-textmate


;;; Commentary:

;; Need install below packages from melpa:
;; textmate


;;; Code:

(textmate-mode)

;; set keys for textmate mode
;; (global-set-key (kbd "M-I") 'textmate-goto-symbol)
(global-set-key (kbd "M-[") 'textmate-shift-left)
(global-set-key (kbd "M-]") 'textmate-shift-right)
(global-set-key (kbd "M-<return>") 'textmate-next-line)

;; resolve conflicts
(global-set-key (kbd "M-i") 'previous-line)

(provide 'init-textmate)

;;; init-textmate ends here