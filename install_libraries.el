(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-refresh-contents)

(if (eq system-type 'darwin)
    (package-install 'exec-path-from-shell))
(package-install 'flycheck)
(package-install 'auto-complete)
(package-install 'elpy)
(package-install 'go-mode)
(package-install 'go-autocomplete)

(save-buffers-kill-emacs)
