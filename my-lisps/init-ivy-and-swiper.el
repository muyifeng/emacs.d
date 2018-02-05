;;; package --- init-ivy-and-swiper


;;; Commentary:

;; Need install below packages from melpa:
;; counsel, smex, imenu-anywhere, counsel-projectile-mode

;; Ivy is split into three packages: ivy, swiper and counsel; you can simply install counsel which will bring in the other two as dependencies:
;; Ivy, a generic completion mechanism for Emacs.
;; Counsel, a collection of Ivy-enhanced versions of common Emacs commands.
;; Swiper, an Ivy-enhanced alternative to isearch.

;; To use smex, just install it and no need to configure anything


;;; Code:

;; enable Ivy completion everywhere:

; (use-package ivy
;   :diminish ivy-mode
;   :init
;   (setq ivy-use-virtual-buffers t)
;   (ivy-mode 1)
;   :config
;   (setq ivy-use-virtual-buffers t)
;   (setq ivy-count-format "(%d/%d) ")
;   (setq ivy-wrap t)
;   (define-key ivy-minibuffer-map (kbd "M-k") 'ivy-next-line)
;   (define-key ivy-minibuffer-map (kbd "M-i") 'ivy-previous-line)
;   )

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")
(setq ivy-wrap t)


;; enable counsel-projectile-mode when emacs starts
(counsel-projectile-mode)

;; keybindings

;; Ivy-based interface to standard commands
(global-set-key (kbd "C-f") 'swiper)
;; (global-set-key [remap isearch-forward] 'swiper)
(global-set-key (kbd "M-a") 'counsel-M-x)
;; (global-set-key [remap execute-extended-command] 'counsel-M-x)
(global-set-key (kbd "C-o") 'counsel-find-file)
;; (global-set-key [remap execute-extended-command] 'ido-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "C-c i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "C-c u") 'counsel-unicode-char)

;; Ivy-based interface to shell and system tools
(global-set-key (kbd "C-c g") 'counsel-git) ;; search file in current git project
(global-set-key (kbd "C-c j") 'counsel-git-grep) ;; search regexp in current project
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-c l") 'counsel-locate)
;; (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)

;; Ivy-resume and other commands
(global-set-key (kbd "C-c r") 'ivy-resume) ;; ivy-resume resumes the last Ivy-based completion.

;; (global-set-key (kbd "M-k") 'ivy-next-line) ;; selects the next candidate
;; (global-set-key (kbd "M-i") 'ivy-previous-line) ;; selects the previous candidate
;; (global-set-key (kbd "M-J") 'ivy-beginning-of-buffer) ;; selects the first candidate
;; (global-set-key (kbd "M-L") 'ivy-end-of-buffer) ;; selects the last candidate
;; (global-set-key (kbd "M-K") 'ivy-scroll-up-command) ;; scrolls up by ivy-height lines
;; (global-set-key (kbd "M-I") 'ivy-scroll-down-command) ;; scrolls down by ivy-height lines

;; https://oremacs.com/2016/01/06/ivy-flx/
(setq ivy-re-builders-alist
      '((t . ivy--regex-fuzzy)))

(setq ivy-initial-inputs-alist nil)

(global-set-key (kbd "C-.") #'ivy-imenu-anywhere)


(provide 'init-ivy-and-swiper)

;;; init-ivy-and-swiper ends here
