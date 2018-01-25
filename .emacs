;; No welcome
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

;; Time
(setq display-time-24hr-format t)
(display-time)

;; Indents
(setq c-basic-offset 4)
(setq tab-width 4)
(setq indent-tabs-mode nil)

;; Cursor
(set-cursor-color "red")
(setq-default cursor-type 'box)

;; Parenthesises
(show-paren-mode t)
(setq show-paren-style 'expression)
(require 'paren)
(set-face-background 'show-paren-match (face-background 'default))
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)

(autoload 'hippie-exp "hippie-exp" t)

;; Keys
(global-set-key "\C-x\C-f" 'find-file)
(global-set-key "\C-\M-f" 'find-file-at-point)
(global-set-key "\C-cn" 'find-dired)
(global-set-key "\C-cN" 'grep-find)

(require 'grep)

;; Store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Misc
(transient-mark-mode 1)
(setq mark-even-if-inactive t)

;; Font lock mode
(defun my-make-face (face colour &optional bold)
  "Create a face from a colour and optionally make it bold"
  (make-face face)
  (copy-face 'default face)
  (set-face-foreground face colour)
  (if bold (make-face-bold face))
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Associate different modes with different file types.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq auto-mode-alist
      (append
       '(("\\.awk\\'" . awk-mode)
         ("ChangeLog" . change-log-mode)
         ("\\.bashrc\\'" . sh-mode)
         ("\\.bib\\'" . bibtex-mode)
         ("\\.blockdiag\\'" . perl-mode)
         ("\\.c\\'" . c-mode)
         ("\\.cgi\\'" . python-mode)
         ("\\.conf\\'" . conf-mode)
         ("\\.config\\'" . conf-mode)
         ("config" . conf-mode)
         ("\\.cpp\\'" . c++-mode)
         ("\\.css\\'" . css-mode)
         ("Dockerfile" . dockerfile-mode)
         ("\\.diff\\'" . diff-mode)
         ("\\.dtd\\'" . sgml-mode)
         ("\\.ebk\\'" . nxml-mode)
         ("\\.el\\'"  . emacs-lisp-mode)
         ("\\.emacs\\'" . emacs-lisp-mode)
         ("\\.es$" . c++-mode)
         ("\\.htm\\'" . html-mode)
         ("\\.html\\'" . web-mode)
         ("\\.idl\\'" . c++-mode)
         ("\\.ini\\'" . conf-mode)
         ("\\.java$" . java-mode)
         ("\\.jbk\\'" . nxml-mode)
         ("\\.js$" . js2-mode)
         ("\\.json$" . js2-mode)
         ("\\.jsp$" . nxml-mode) ;; nxml-mode
         ("\\.jspf$" . nxml-mode) ;; nxml-mode
         ("\\.less\\'" . javascript-mode)
         ("\\.magik$" . python-mode)
         ("\\Makefile$" . makefile-mode)
         ("\\makefile$" . makefile-mode)
         ("\\.md$" . markdown-mode)
         ("\\.odl\\'" . c++-mode)
         ("\\.org\\'" . org-mode)
         ("\\.patch\\'" . diff-mode)
         ("\\.pdf\\'" . doc-view-mode)
         ("\\.php\\'" . php-mode)
         ("\\.phtml\\'" . php-mode)
         ("\\.pl\\'" . perl-mode)
         ("\\.pp\\'" . ruby-mode)
         ("\\.properties.template\\'" . conf-mode)
         ("\\.properties\\'" . conf-mode)
         ("\\.puppet\\'" . puppet-mode)
         ("\\.py$" . python-mode)
         ("\\.py\\'" . python-mode)
         ("\\.sed\\'" . sh-mode)
         ("\\.sh\\'" . sh-mode)
         ("\\.shtml\\'" . nxml-mode)
         ("\\.sql\\'" . sql-mode)
         ("\\.targets$" . nxml-mode)
         ("\\.tex\\'" . latex-mode)
         ("\\.text\\'" . text-mode)
         ("\\.tld.*\\'" . nxml-mode)
         ("\\.txt\\'" . text-mode)
         ("\\.vcl\\'" . java-mode)
         ("\\.vm\\'" . emacs-lisp-mode)
         ("\\.wfcfg\\'" . perl-mode)
         ("\\.wsdd\\'" . nxml-mode)
         ("\\.xml$" . nxml-mode) ;; psgml-mode, nxml-mode
         ("\\.xsd$" . nxml-mode) ;; xsl-mode
         ("\\.xsl$" . nxml-mode) ;; xsl-mode
         ("\\.yaml\\'" . yaml-mode)
         ("\\.yml\\'" . yaml-mode)
         ("\\config\\'" . conf-mode)
         ("control" . conf-mode)
         ("github.*\\.txt$" . markdown-mode)
         ("pom.xml" . nxml-mode)
         ("tkj-p4-diff-buffer" . diff-mode)
)))

;; Restore the "desktop" (do this as late as possible)
(desktop-load-default)
(desktop-read)
(desktop-save-mode 1)