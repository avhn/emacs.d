(add-hook 'python-mode-hook (lambda ()
  (setq indent-tabs-mode nil
		python-indent 4)

  ;; use virtualenv for elpy packages
  (setq elpy-rpc-python-command "~/.emacs.d/.py3venv/bin/python3.7")
  (elpy-enable)
  ))
