(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-refresh-contents)

(if (eq system-type 'darwin)
    (package-install 'exec-path-from-shell))
(package-install 'elpy)

(save-buffers-kill-emacs)
