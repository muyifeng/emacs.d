;;; package --- init-textmate


;;; Commentary:

;; Need install below packages from melpa:
;; textmate


;;; Code:

(textmate-mode)

;; keybindings
(global-set-key (kbd "M-[") 'textmate-shift-left)
(global-set-key (kbd "M-]") 'textmate-shift-right)
(global-set-key (kbd "M-<return>") 'textmate-next-line)


(provide 'init-textmate)

;;; init-textmate ends here
