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

;; Layout keyboard

(setq my/input-active "en")

(defun my/current-input ()
    (interactive)
   (message (upcase my/input-active)))

(defun my/toggle-input ()
  (interactive)
    (if (string= my/input-active "en")
	(progn
	  (set-input-method 'spanish-prefix)
	  ;;(shell-command "setxkbmap -layout es")
	  (setq my/input-active "es")
	  (message "Input ES"))
      (progn
	(set-input-method 'british)
	;;(shell-command "setxkbmap -layout us")
	(setq my/input-active "en")
	(message "Input EN")
	)))

(global-set-key (kbd "\C-\\") 'my/toggle-input)
;; ~? => ¿
;; ~! => ¡

