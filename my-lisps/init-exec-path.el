;;; package name --- init-exec-path

;; Packages installed (from melpa):
;; exec-path-from-shell

;; exec-path-from-shell: ensure environment variables inside Emacs look the same as in the user's shell.
(use-package exec-path-from-shell
  :if (memq window-system '(mac ns))
  :ensure t
  :config (exec-path-from-shell-initialize))

(provide 'init-exec-path)
