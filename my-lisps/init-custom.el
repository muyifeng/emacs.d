;;; package --- init-custom

;;; Commentary:

;;; Code:

;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file t)

(provide 'init-custom)

;;; init-custom.el ends here
