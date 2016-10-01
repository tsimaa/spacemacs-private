;;; config.el --- zilongshanren Layer packages File for Spacemacs
;;
;; Copyright (c) 2015-2016 zilongshanren
;;
;; Author: zilongshanren <guanghui8827@gmail.com>
;; URL: https://github.com/zilongshanren/spacemacs-private
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq user-full-name "Bruce Chen")
(setq user-mail-address "flyingns@gmail.com")
(setq gnus-select-method '(nntp "news.newsfan.net"))

(setq gnus-secondary-select-methods
	  '(
		(nntp "gmane"
			  (nntp-address "news.gmane.org"))
		(nntp "news.eternal-september.org")
		(nntp "nntp.aioe.org")
		(nntp "news.gwene.org")
		))

(setq gnus-default-charset 'utf-8
	  gnus-group-name-charset-group-alist '((".*" . cn-gb-2312))
	  gnus-summary-show-article-charset-alist
	  '((1 . cn-gb-2312)
		(2 . gb18030)
		(3 . chinese-iso-8bit)
		(4 . gbk)
		(5 . big5)
		(6 . chinese-gb))
	  gnus-newsgroup-ignored-charsets
	  '(unknown-8bit x unknown iso-8859-1))

(auto-image-file-mode)
(setq mm-inline-large-images t)
(add-to-list 'mm-attachment-override-types "image/*")

(setq gnus-posting-styles
	  '((".*"
		 (name "flyingns")
		 (address "flyingns@gmail.com")
		 (signature "--\nBruce Chen\n")
		 ))
	  )
