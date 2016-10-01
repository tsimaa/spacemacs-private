;;; packages.el --- flyingns Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq flyingns-packages
    '(
      org
	  org-tree-slide
	  org-bullets
	  multiple-cursors
	  gnus
	  mu4e
	  avy
	  keyfreq
	  (occur-mode :location built-in)
	  (dired-mode :location built-in)
	  flycheck
      helm
      yasnippet
      (whitespace :location built-in)
      (eim :location local)
      ;; package names go here
      ))

;; List of packages to exclude.
(setq flyingns-excluded-packages '())
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
;; For each package, define a function flyingns/init-<package-name>
;;
;; (defun flyingns/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package

(defun flyingns/init-org-tree-slide ()
  (use-package org-tree-slide
			   :init
			   (evil-leader/set-key "oto" 'org-tree-slide-mode)))

(setq org-mobile-directory "~/Nutstore/mobileorg")


(defun flyingns/post-init-org-bullets ()
  (setq org-bullets-bullet-list '("①" "②" "③" "④" "⑤" "⑥" "⑦" "⑧" "⑨" "⑩")))

(with-eval-after-load 'org
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((perl . t)
     (ruby . t)
     (sh . t)
     (java . t)
     (dot . t)
     (haskell . t)
     (js . t)
     (latex .t)
     (python . t)
     (R . t)
     (emacs-lisp . t)
     (plantuml . t)
     (C . t)
     (ditaa . t))))
