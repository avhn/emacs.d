(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-refresh-contents)

(if (eq system-type 'darwin)
    (package-install 'exec-path-from-shell))
(package-install 'flycheck)
(package-install 'elpy)
(package-install 'kotlin-mode)

(package-install 'go-mode)
(package-install 'go-rename)
(package-install 'go-guru)

(save-buffers-kill-emacs)
