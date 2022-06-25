;; PACKAGES
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(global-display-line-numbers-mode t)
 '(ispell-dictionary "castellano8")
 '(line-number-mode nil)
 '(package-selected-packages
   '(expand-region paredit undo-tree elisp-format rainbow-delimiters elfeed multiple-cursors magit multi-term monokai-theme cmake-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Disable splash screen and startup message
(setq inhibit-startup-message t) 
(setq initial-scratch-message nil)
;; Tramp
 (setq tramp-default-method "ssh")
;; THEMES
;;; Monokai
(load-theme 'monokai t)
;;; Font family
(add-to-list 'default-frame-alist '(font . "JetBrains Mono" ))
(set-face-attribute 'default t :font "JetBrains Mono" )
;;; Line numbers
(require 'display-line-numbers)
(defcustom display-line-numbers-exempt-modes
  '(vterm-mode eshell-mode shell-mode term-mode ansi-term-mode multi-term)
  "Major modes on which to disable line numbers."
  :group 'display-line-numbers
  :type 'list
  :version "green")
(defun display-line-numbers--turn-on ()
  "Turn on line numbers except for certain major modes.
Exempt major modes are defined in `display-line-numbers-exempt-modes'."
  (unless (or (minibufferp)
              (member major-mode display-line-numbers-exempt-modes))
    (display-line-numbers-mode)))
(global-display-line-numbers-mode)
;;; Battery
(display-battery-mode)

;; PLUGINS

;;; multi-term
(setq multi-term-program "/bin/fish")
(global-set-key (kbd "<f12>") 'multi-term)

;; multiple-cursors
(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; elfeed
(setq elfeed-feeds
      '("https://rss.andros.dev"))
(setf url-queue-timeout 30)
(setq-default elfeed-search-filter "@7-days-ago +unread")
(setq-default elfeed-search-title-max-width 100)
(setq-default elfeed-search-title-min-width 100)

;; undo-tree
(global-undo-tree-mode)
;; C-_  C-/ Undo changes.
;; M-_  C-? Redo changes.
;; C-x u Visualize the undo tree.

;; Burn code
(load "~/.emacs.d/burn.el")
(require 'burn)

;; expand-region
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
