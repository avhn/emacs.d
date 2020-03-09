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

  ; use python 3.*
  (setq elpy-rpc-python-command "python3")
  (elpy-enable)
))

;;; Go mode config ;;;

(defun go-hook ()
  (auto-complete-mode 1)
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Compile command customization
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))
  )

(add-hook 'go-mode-hook 'go-hook)

; github.com/nsf/gocode required
(with-eval-after-load 'go-mode
  (require 'go-autocomplete))
