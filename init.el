;;---
;; Init
;;---


(setq path-emacs-config "~/emacs.d")

(setq path-list-config (list
      "packages"
      "core"
      "ui"
      "languages"
      "plugins"
      "functions"
      "burn"
      ))

;; Load files
(mapc (lambda (my-path)
  (load-file
   ;; Format path
   (expand-file-name (concat my-path ".el") path-emacs-config)))
      path-list-config)

(message " Welcome")

;;---
;; END - Carpe Diem
;;---
