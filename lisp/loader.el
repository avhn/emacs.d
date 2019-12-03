;; enable MELPA
(require 'package)
(add-to-list 'package-archives
             (cons "melpa" "https://melpa.org/packages/") t)
(package-initialize)

;; use $PATH from shell for macOS GUI
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(load "defaults")
(load "bindings")
(load "modes")

(setq custom-file "~/.emacs.d/lisp/custom.el")
(when (file-exists-p custom-file)
  (load custom-file))
