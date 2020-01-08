;;; package --- init-flycheck


;;; Commentary:

;; Need install below packages from melpa:
;; flycheck


;;; Code:

;; flycheck
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode)
  :config
  (flycheck-add-mode 'javascript-eslint 'js-mode)
  ) ;; use eslint with web-mode for jsx files

;; disable jshint since we prefer eslint checking
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(javascript-jshint)))

(setq js2-mode-show-parse-errors nil)
(setq js2-mode-show-strict-warnings nil)

;; use local eslint from node_modules before global
;; http://emacs.stackexchange.com/questions/21205/flycheck-with-file-relative-eslint-executable
(defun my/use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/eslint/bin/eslint.js"
                                        root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))

;; (add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)

;; for better jsx syntax-highlighting in web-mode
;; - courtesy of Patrick @halbtuerke
; (defadvice web-mode-highlight-part (around tweak-jsx activate)
;   (if (equal web-mode-content-type "jsx")
;     (let ((web-mode-enable-part-face nil))
;       ad-do-it)
;     ad-do-it))

(provide 'init-flycheck)

;;; init-flycheck ends here
