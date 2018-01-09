;;; package --- init-isearch


;;; Commentary:

;; Need install below packages from melpa:
;; anzu


;;; Code:

;; anzu.el provides a minor mode which displays current match and total matches information in the mode-line in various search modes.
(global-anzu-mode t)
(anzu-mode +1)
(global-set-key [remap query-replace-regexp] 'anzu-query-replace-regexp)
(global-set-key [remap query-replace] 'anzu-query-replace)

;; DEL during isearch should edit the search string, not jump back to the previous result
(define-key isearch-mode-map [remap isearch-delete-char] 'isearch-del-char)

(provide 'init-isearch)

;;; init-isearch ends here
