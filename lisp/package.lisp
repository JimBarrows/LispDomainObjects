;;;; package.lisp

(defpackage #:bizondemand-packages
	( :use :cl :asdf))

(in-package :bizondemand-packages)

(defpackage #:party
  (:use :cl :postmodern )
  (:export :connect-to-db))

(defpackage :web
	(:use :cl :asdf :cl-who :hunchentoot :parenscript))
