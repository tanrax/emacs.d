;;---
;; Core
;;---

;; Use UTF-8
(prefer-coding-system 'utf-8)

;; backup in single, flat directory
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))

;; Garbage Collection after 20MB
(setq gc-cons-threshold (* 20 1024 1024))

;; Make clipboard work well with X applications
(setq select-enable-clipboard t)
(setq x-select-enable-clipboard t)

;; emacs buffer, window persistence
(setq desktop-save-mode t
      desktop-path '("."))

;; Autoload file changes
(global-auto-revert-mode t)


;;---
;; Shortcuts
;;---

;; Eval buffer
(global-set-key (kbd "C-c e") 'eval-buffer)
