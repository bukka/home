;;;; General setting setting
;;; formating - indent, offset...
(setq c-default-style "k&r")
(c-set-offset 'substatement-open 0)
(c-set-offset 'inline-open 0)
(setq c-basic-offset 4)
(setq c-comment-only-line-offset 0)
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
;;; others
(setq-default transient-mark-mode nil)
(setq-default abbrev-mode nil)
(show-paren-mode 0)
(blink-cursor-mode 0)
(setq scroll-conservatively 3)
(setq scroll-step 1)
(setq make-backup-files nil)
(setq inhibit-splash-screen t)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
;;; global keys
(global-set-key (kbd "RET") 'newline-and-indent)

;;;; load path
(add-to-list 'load-path "~/.emacs.d/")

;;;; re2c
(add-to-list 'auto-mode-alist '("\\.re$" . c-mode))

;;;; ------------------------------------------------------------------------------
;;;; PHP mode
(load "php-mode.el")
(add-to-list 'auto-mode-alist '("\\.inc$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.phpt$" . php-mode))
(setq php-completion-file "/home/jakub/.emacs.d/php/php-completion-file")

(add-hook 'php-mode-hook
          (lambda ()
			(php-enable-wordpress-coding-style)
            (define-key php-mode-map "\C-c\C-x" 'php-complete-function)
            (define-key php-mode-map "\C-cx" 'php-complete-function)
            (define-key php-mode-map "\C-cj" 'js-mode)
            (define-key php-mode-map "\C-ch" 'html-mode)))

;;;; ------------------------------------------------------------------------------
;;;; JS mode
(setq js-indent-level 2)

;; (add-hook 'php-mode-hook
;;           (lambda ()
;;              (define-key js-mode-map "\C-ch" 'html-mode)
;;              (define-key js-mode-map "\C-cp" 'php-mode)))


;;;; ------------------------------------------------------------------------------
;;;; JS2 mode
;(add-to-list 'load-path "~/.emacs.d/load/")
;(autoload 'js2-mode "js2" nil t)
;(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))


;;;; ------------------------------------------------------------------------------
;;;; HTML mode
(add-hook 'html-mode-hook
           (lambda ()
             (define-key html-mode-map "\C-cj" 'js-mode)
             (define-key html-mode-map "\C-cp" 'php-mode)))
          
;;;; ------------------------------------------------------------------------------
;;;; nXhtml mode
; (load "/home/jakub/.emacs.d/nxhtml/autostart.el")


;;;; ------------------------------------------------------------------------------
;;;; CSS mode
(setq css-indent-offset 2)


;;;; ------------------------------------------------------------------------------
;;;; Shell mode
(setq sh-basic-offset 2)

;;;; ------------------------------------------------------------------------------
;;;; M4 and Autoconf mode
(add-hook 'm4-mode-hook
           (lambda ()
			 (setq tab-width 2)
			 (setq indent-tabs-mode nil)))
(add-hook 'autoconf-mode-hook
           (lambda ()
			 (setq tab-width 2)
			 (setq indent-tabs-mode nil)))

;;;; ------------------------------------------------------------------------------
;;;; SQL mode
(setq sql-product 'mysql)

(eval-after-load "sql"
  (load-library "~/.emacs.d/sql-indent.el"))


;;;; ------------------------------------------------------------------------------
;;;; FACES
 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 105 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))

;; (make-face 'my-comment-face)
;; (set-face-foreground 'my-comment-face "red3")
;; (set-face-background 'my-comment-face "white")
;; (setq font-lock-comment-face 'my-comment-face)

;; (make-face 'my-constant-face)
;; (set-face-foreground 'my-constant-face "DarkTurquoise")
;; (set-face-background 'my-constant-face "white")
;; (setq font-lock-constant-face 'my-constant-face)

;; (make-face 'my-type-face)
;; (set-face-foreground 'my-type-face "DarkSlateGray")
;; (set-face-background 'my-type-face "white")
;; (setq font-lock-type-face 'my-type-face)

;; (make-face 'my-variable-name-face)
;; (set-face-foreground 'my-variable-name-face "purple")
;; (set-face-background 'my-variable-name-face "white")
;; (setq font-lock-variable-name-face 'my-variable-name-face)

;; (make-face 'my-keyword-face)
;; (set-face-foreground 'my-keyword-face "DarkBlue")
;; (set-face-background 'my-keyword-face "white")
;; (setq font-lock-keyword-face 'my-keyword-face)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((sgml-local-ecat-files) (sgml-local-catalogs) (sgml-exposed-tags) (sgml-default-dtd-file . "~/.phpdoc/manual.ced") (sgml-parent-document) (sgml-indent-data . t) (sgml-indent-step . 1) (sgml-always-quote-attributes . t) (sgml-minimize-attributes) (sgml-shorttag . t) (sgml-omittag . t))))
 '(sgml-basic-offset 1)
 '(sql-indent-offset 1))
