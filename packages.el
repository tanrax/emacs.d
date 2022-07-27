;;---
;; Packages
;;---

;; Setup Package Managers
(require 'package)

(setq package-archives '())
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("elpy" . "https://jorgenschaefer.github.io/packages/") t)
(package-initialize)

(setq my-packages '(
                    use-package
		    slime
		    paredit
                    monokai-theme
                    web-mode
		    emmet-mode
		    magit
		    rainbow-delimiters
		    expand-region
		    undo-tree
		    elfeed
		    multiple-cursors
		    multi-term
		    cmake-mode
		    corfu
		    markdown-mode
		    dired-hide-dotfiles
		    ))

;; Update packages
(defun my/packages-install ()
  (interactive)
  (package-refresh-contents)
  ;; Iterarate packages
  (mapc
   ;; Install packages
   (lambda (item-package)
     (unless (package-installed-p item-package)
       (package-install item-package)))
   my-packages))
