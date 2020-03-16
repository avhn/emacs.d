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

;; Python mode ;;

(require 'elpy)
(defun elpy-python3-hook ()
  (setq indent-tabs-mode nil
        python-indent 4
        python-shell-interpreter "python3"
        python-shell-interpreter-args "-i"
        elpy-rpc-python-command "python3")
  (elpy-enable))

(add-hook 'python-mode-hook 'elpy-python3-hook)

;;; Go mode config ;;;

(defun go-hook ()
  (auto-complete-mode 1)
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Compile command customization
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet")))

(add-hook 'go-mode-hook 'go-hook)

; github.com/nsf/gocode required
(with-eval-after-load 'go-mode
  (require 'go-autocomplete))

;;; Java mode ;;;

(require 'meghanada)

(defun meghanada-java-hook ()
  (meghanada-mode t)
  (flycheck-mode +1)
  (setq c-basic-offset 2
        tab-width 2)
  (add-hook 'before-save-hook 'meghanada-code-beautify-before-save)
  ;; prepare environment vars for meghanada-server
  (cond
   ((eq system-type 'windows-nt)
    (setq meghanada-java-path (expand-file-name "bin/java.exe" (getenv "JAVA_HOME")))
    (setq meghanada-maven-path "mvn.cmd"))
   (t
    (setq meghanada-java-path "java")
    (setq meghanada-maven-path "mvn")))
  )

(add-hook 'java-mode-hook 'meghanada-java-hook)
