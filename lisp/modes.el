(add-hook 'makefile-mode-hook
          (lambda()
            (setq indent-tabs-mode t)))


(add-hook 'c-mode-hook
          (lambda()
            (setq c-default-style "linux"
                  c-basic-offset 2)))


(add-hook 'latex-mode-hook
          (lambda()
            (setq LaTeX-indent-level 4
                  LaTeX-item-indent 2)))


(add-hook 'python-mode-hook (lambda ()
  (setq indent-tabs-mode nil
		python-indent 4)

  ;; use python 3.*
  (setq elpy-rpc-python-command "python3")
  (elpy-enable)
))
