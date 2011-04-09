;;;; package.lisp

(in-package :cl-user)

(defpackage party
  (:use :cl :postmodern ))

(defpackage product
	(:use :cl :postmodern :s-sql :party)
	(:export create-good list-products))

(defpackage business
	(:use :cl :party :postmodern :s-sql)
	(:export find-business))

(defpackage templates
	(:use :cl :cl-who :hunchentoot)
	(:export with-html))

(defpackage web-utils
	(:use :cl :cl-who :hunchentoot :parenscript :json)
	(:export json-encode-list-of-plists))

(defpackage web
	(:use :cl :asdf :cl-who :hunchentoot :parenscript :json :business :product))
