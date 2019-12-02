(setq custom-file "~/.emacs.d/lisp/custom.el")
(when (file-exists-p custom-file)
  (load custom-file))

;; enable MELPA
(require 'package)
(add-to-list 'package-archives
             (cons "melpa" "https://melpa.org/packages/") t)

(package-initialize)

(load "config/defaults")
(load "config/bindings")
(load "config/modes")
(load "config/python")

