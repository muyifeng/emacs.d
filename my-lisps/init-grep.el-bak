;;; package --- init-grep


;;; Commentary:

;; Need install ag command tool: https://github.com/ggreer/the_silver_searcher
;; Need install below packages from melpa:
;; ag, wgrep-ag


;;; Code:

(setq-default grep-highlight-matches t
  grep-scroll-output t)

;;(when *is-a-mac*
(setq-default locate-command "mdfind")

(when (executable-find "ag")
  (setq-default ag-highlight-search t)
  (global-set-key (kbd "M-F") 'ag-project))

(provide 'init-grep)

;;; init-grep ends here
