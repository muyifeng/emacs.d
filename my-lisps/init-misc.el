;;; package --- init-misc


;;; Commentary:


;;; Code:

;; General userinterface and appearance
(global-hl-line-mode 1)                       ; Highlight cursor line
(global-font-lock-mode 1)                      ; turn on syntax coloring

(setq-default cursor-type 'bar)

(setq inhibit-startup-message t)               ; No message at startup
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)

(let ((no-border '(internal-border-width . 0)))
  (add-to-list 'default-frame-alist no-border)
  (add-to-list 'initial-frame-alist no-border))


;; Cursor and mouse
(column-number-mode t)                         ; Show column number in mode-line
;(mouse-wheel-mode t)                           ; Mouse-wheel enabled
(setq scroll-preserve-screen-position t)       ; Scroll without moving cursor


;; Tabs, spaces, lines and parenthesis
(show-paren-mode t)                            ; Highlight parenthesis pairs
;; (global-visual-line-mode 1)                    ; Don't show down arrow key when line wrapped to next
(setq-default indicate-empty-lines nil)        ; Don't show empty lines
(setq-default indent-tabs-mode nil)            ; Use spaces instead of tabs
;(setq-default tab-always-indent 'complete)
(setq-default tab-width 2)                     ; Set for default: Length of tab is 2 SPC
(setq tab-width 2)                             ; Set for current buffer: Length of tab is 2 SPC
;; (setq blink-matching-paren-distance nil)       ; Blinking parenthesis
;; (setq show-paren-style 'expression)            ; Highlight text between parens
(setq js-indent-level 2)


;; Files and sessions
(setq auto-save-default nil)
;; (setq auto-save-timeout 60)                    ; Autosave every minute
(setq make-backup-files nil)                   ; Prevent Emacs from making backup files
(setq ffap-newfile-prompt t)
(recentf-mode 1)                               ; keep a list of recently opened files, call "recentf-open-files"
(add-hook 'before-save-hook 'delete-trailing-whitespace) ; Delete trailing whitespace on save


;; Miscellaneous
(setq auto-fill-mode t)                        ; Turn on Auto Fill mode automatically in all modes
(setq default-fill-column 82)
(setq default-major-mode 'text-mode)           ; Text-mode is default mode
;; (setq default-abbrev-mode t)
(setq scroll-step 1)                           ; Line by line scrolling


;; Customization for your locale, environment and computer.
;; (setq calendar-week-start-day 1)               ; Week starts monday
;; (setq ispell-dictionary "english")             ; Set ispell dictionary
;; (setq shell-file-name "/bin/bash")             ; Set Shell for M-| command
;; (setq grep-command "grep -i -nH -e ")          ; Set grep command options  (-i means case insensitive)

(provide 'init-misc)

;;; init-misc ends here
