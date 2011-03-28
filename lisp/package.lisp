;;;; package.lisp

(in-package :cl-user)

(defpackage party
  (:use :cl :postmodern ))

(defpackage web
	(:use :cl :asdf :cl-who :hunchentoot :parenscript :json :party))
