(add-hook 'python-mode-hook (lambda ()
  (setq indent-tabs-mode nil
		python-indent 4)

  ;; use python 3.*
  (setq elpy-rpc-python-command "python3")
  (elpy-enable)
))
