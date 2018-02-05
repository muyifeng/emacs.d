;;; package --- init-alias


;;; Commentary:


;;; Code:

;; Get rid of the “yes or no” prompt and replace it with “y or n”
(fset 'yes-or-no-p 'y-or-n-p)

;; Remove the annoying confirmation if a file or buffer does not exist when you use C-x C-f or C-x b.
(setq confirm-nonexistent-file-or-buffer nil)

;; Disable the prompt that asks you if you want to create a new buffer if you enter a non-existent buffer in C-x b
;; (setq ido-create-new-buffer 'always)


;; (defalias 'yes-or-no-p 'y-or-n-p) ; y or n is enough

;; make frequently used commands short
;; (defalias 'qrr 'query-replace-regexp)
;; (defalias 'lml 'list-matching-lines)
;; (defalias 'dml 'delete-matching-lines)
;; (defalias 'dnml 'delete-non-matching-lines)
;; (defalias 'dtw 'delete-trailing-whitespace)
;; (defalias 'sl 'sort-lines)
;; (defalias 'rr 'reverse-region)
;; (defalias 'rs 'replace-string)

;; (defalias 'g 'grep)
;; (defalias 'gf 'grep-find)
;; (defalias 'fd 'find-dired)

;; (defalias 'rb 'revert-buffer)

;; (defalias 'sh 'shell)
;; (defalias 'ps 'powershell)
;; (defalias 'fb 'flyspell-buffer)
;; (defalias 'sbc 'set-background-color)
;; (defalias 'rof 'recentf-open-files)
;; (defalias 'lcd 'list-colors-display)
;; (defalias 'cc 'calc)

;; ;; elisp
;; (defalias 'eb 'eval-buffer)
;; (defalias 'er 'eval-region)
;; (defalias 'ed 'eval-defun)
;; (defalias 'eis 'elisp-index-search)
;; (defalias 'lf 'load-file)

(provide 'init-alias)

;;; init-alias ends here
