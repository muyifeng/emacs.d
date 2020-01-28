;;; package name --- init-general-settings

;; Frame title, menubar and toolbar
(setq frame-title-format "%b - ericyang@emacs")         ;; Use buffer name as frame title
;; (set-language-environment "UTF-8")                       ;; UTF-8 as default encoding
(tool-bar-mode -1)                                      ;; No toolbar
(menu-bar-mode -1)                                      ;; No menubar
(scroll-bar-mode -1)                                    ;; No scrollbar
(global-linum-mode t)                                   ;; Show line numbers on buffers

;; Set a default font
(when (member "Hack" (font-family-list)) (set-frame-font "Hack-14" t t))

;; General userinterface and appearance
(global-hl-line-mode 1)                        ;; Highlight cursor line
(global-font-lock-mode 1)                      ;; turn on syntax coloring
(column-number-mode t)                         ;; Show column number in mode-line

;; Border
(let ((no-border '(internal-border-width . 0)))
  (add-to-list 'default-frame-alist no-border)
  (add-to-list 'initial-frame-alist no-border))

;; Greetings
(setq inhibit-startup-message t)               ;; No message at startup
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)

;; Cursor and mouse
(setq-default cursor-type 'bar)

;; Line spacing
;; (setq-default line-height 5)
(setq-default line-spacing 10)

;; Files and sessions
(setq auto-save-default nil)
;; (setq auto-save-timeout 60)                    ;; Autosave every minute
(setq make-backup-files nil)                   ;; Prevent Emacs from making backup files
(setq ffap-newfile-prompt t)
(recentf-mode 1)                               ;; keep a list of recently opened files, call "recentf-open-files"
(setq recentf-max-saved-items 1000
  recentf-exclude '("/tmp/" "/ssh:"))
(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; Delete trailing whitespace on save

;; Tabs, lines and parenthesis
(show-paren-mode t)                            ;; Highlight parenthesis pairs
;; (global-visual-line-mode 1)                    ;; Don't show down arrow key when line wrapped to next
(setq-default indicate-empty-lines nil)        ;; Don't show empty lines
(setq-default indent-tabs-mode nil)            ;; Use spaces instead of tabs
;; (setq-default tab-always-indent 'complete)
(setq-default tab-width 2)                     ;; Set for default: Length of tab is 2 SPC
(setq tab-width 2)                             ;; Set for current buffer: Length of tab is 2 SPC
;; (setq blink-matching-paren-distance nil)       ;; Blinking parenthesis
;; (setq show-paren-style 'expression)            ;; Highlight text between parens

;; Whitespace
;; automatically clean up bad whitespace
(setq whitespace-action '(auto-cleanup))
;; only show bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))

;; Scroll
;; (mouse-wheel-mode t)                           ;; Mouse-wheel enabled
(setq scroll-preserve-screen-position t)       ;; Scroll without moving cursor
;; (setq scroll-step 1)                           ;; Line by line scrolling

;; Miscellaneous
(setq auto-fill-mode t)                        ;; Turn on Auto Fill mode automatically in all modes
(setq default-fill-column 82)
(setq default-major-mode 'text-mode)           ;; Text-mode is default mode
;; (setq default-abbrev-mode t)

;; Get rid of the “yes or no” prompt and replace it with “y or n”
(fset 'yes-or-no-p 'y-or-n-p)
;; Remove the annoying confirmation if a file or buffer does not exist when you use C-x C-f or C-x b.
(setq confirm-nonexistent-file-or-buffer nil)
;; Disable the prompt that asks you if you want to create a new buffer if you enter a non-existent buffer in C-x b
;; (setq ido-create-new-buffer 'always)

;; Customization for your locale, environment and computer.
;; (setq calendar-week-start-day 1)               ;; Week starts monday
;; (setq ispell-dictionary "english")             ;; Set ispell dictionary
;; (setq shell-file-name "/bin/bash")             ;; Set Shell for M-| command
;; (setq grep-command "grep -i -nH -e ")          ;; Set grep command options  (-i means case insensitive)

;; MacOSX key settings
(setq mac-command-modifier 'meta)
;; (setq mac-option-modifier 'none)
(setq default-input-method "MacOSX")

;; Keybindings
(global-set-key (kbd "M-0") 'delete-window)
(global-set-key (kbd "M-=") 'text-scale-increase)
(global-set-key (kbd "M--") 'text-scale-decrease)
;; (global-set-key (kbd "C-SPC") 'set-mark-command)
;; (global-set-key (kbd "C-c C-c") 'comment-region)
;; (global-set-key (kbd "C-c C-u") 'uncomment-region)

(provide 'init-general-settings)
