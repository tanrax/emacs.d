;;---
;; Core
;;---

;; Use UTF-8
(prefer-coding-system 'utf-8)

;; Dictionary
(ispell-dictionary "castellano8")

;; backup in single, flat directory
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))

;; Garbage Collection after 20MB
(setq gc-cons-threshold (* 20 1024 1024))

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Make clipboard work well with X applications
(setq select-enable-clipboard t)
;(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)
(setq x-select-enable-clipboard t)
;; emacs buffer, window persistence
(setq desktop-save-mode t
      desktop-path '("."))

 
