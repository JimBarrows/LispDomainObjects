;;;; package.lisp

(in-package :cl-user)

(defpackage "party"
  (:use :cl :postmodern )
  (:export :connect-to-db))

(defpackage "web"
	(:use :cl :asdf :cl-who :hunchentoot :parenscript))
