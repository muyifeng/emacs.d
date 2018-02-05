;;; package --- init-exec-path


;;; Commentary:

;; Need install below packages from melpa:
;; exec-path-from-shell


;;; Code:

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(provide 'init-exec-path)

;;; init-exec-path ends here
