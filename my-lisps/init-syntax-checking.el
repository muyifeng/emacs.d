;;; package --- init-syntax-checking

;;; Commentary:

;; Packages installed (from melpa):
;; flycheck

;;; Code:

;; flycheck: http://www.flycheck.org
;; Dep pylint, tidy, csslint, eslint
(use-package flycheck
  :defer t
  :init (global-flycheck-mode)
  :config
  (setq-default flycheck-global-modes '(not org-mode))
  ;; disable json-jsonlist checking for json files
  (setq-default flycheck-disabled-checkers (append flycheck-disabled-checkers '(json-jsonlist)))
  ;; disable jshint since we prefer eslint checking
  (setq-default flycheck-disabled-checkers (append flycheck-disabled-checkers '(javascript-jshint))))

;; Use local eslint from node_modules by default rather than global eslint executable
;; http://emacs.stackexchange.com/questions/21205/flycheck-with-file-relative-eslint-executable
;; (defun my/use-eslint-from-node-modules ()
;;   (let* ((root (locate-dominating-file
;;                 (or (buffer-file-name) default-directory)
;;                 "node_modules"))
;;          (eslint (and root
;;                       (expand-file-name "node_modules/eslint/bin/eslint.js"
;;                                         root))))
;;     (when (and eslint (file-executable-p eslint))
;;       (setq-local flycheck-javascript-eslint-executable eslint))))

;; (add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)

(provide 'init-syntax-checking)

;;; init-syntax-checking.el ends here
