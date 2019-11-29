(add-hook 'python-mode-hook (lambda ()
  (setq indent-tabs-mode nil
		python-indent 4)  
  ;; use virtualenv for elpy
  (setq elpy-rpc-python-command "python3")
  (elpy-enable)
))
