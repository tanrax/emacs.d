;;; multi-term
(setq multi-term-program "/bin/fish")
(global-set-key (kbd "<f12>") 'multi-term)

;; dired
(global-set-key (kbd "<f11>") 'dired)

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
(require 'burn)

;; expand-region
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region) 


;; Tramp
(setq tramp-default-method "ssh")
