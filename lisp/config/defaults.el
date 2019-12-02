(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; use UTF-8
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(setq-default ns-pop-up-frames nil
      column-number-mode t
      indent-tabs-mode nil
      tab-width 4
      default-directory "~/"
      python-shell-interpreter "python3"
      python-shell-interpreter-args "-i")

(set-default-font "Source Code Pro")
 
(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
      (menu-bar-mode -1)
      (scroll-bar-mode -1)
      (load-theme 'deeper-blue t))
  ;; else
  (load-theme 'manoj-dark t))
