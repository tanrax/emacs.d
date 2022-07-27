;;---
;; Core
;;---

;; Use UTF-8
(prefer-coding-system 'utf-8)

;; backup in single, flat directory
(setq backup-directory-alist '((".*" . "~/.local/share/Trash/files/")))

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

;; Scroll one line up or down

(defun gcm-scroll-down ()
  (interactive)
  (next-line)
  (scroll-up 1))

(defun gcm-scroll-up ()
  (interactive)
  (previous-line)
  (scroll-down 1))

(global-set-key "\M-n" 'gcm-scroll-down)
(global-set-key "\M-p" 'gcm-scroll-up)
