;;---
;; Visual
;;---

;; Theme
(load-theme 'monokai t)

;; Font family and size
(set-face-attribute 'default nil :font "JetBrains Mono" :height 100)

;; Add emojis
(when (member "Noto Color Emoji" (font-family-list))
  (set-fontset-font
    t 'symbol (font-spec :family "Noto Color Emoji") nil 'prepend))


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

;; Rainbow-delimiters
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; Disable sound bell
(setq visible-bell 1)

;; Remove Menu bar
;(menu-bar-mode -1)

;; Remove Tool bar
;(tool-bar-mode -1)

;; Space after number line
(setq linum-format "%d ")

;; Emacs thinks a sentence a full-stop followed by 2 spaces. Let’s make it full-stop and 1 space.
(setq sentence-end-double-space nil)

;; Set current buffer name in emacs X11 window title
(setq frame-title-format "%b - Emacs")

;; Answer with y or n instead of the default yes or no
(defalias 'yes-or-no-p 'y-or-n-p)

;; Inhibit startup screen
(setq inhibit-startup-screen t)

;; Blank *scratch* buffer
(setq initial-scratch-message nil)

;; No newlines past EOF
(setq next-line-add-newlines nil)

;; C spacing = 4 instead of default 2
(setq-default c-basic-offset 4)
