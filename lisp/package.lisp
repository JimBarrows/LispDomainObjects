;;;; package.lisp

(in-package :cl-user)

(defpackage database
	(:use :cl :postmodern)
	(:export connect-to-database))

(defpackage utils
	(:use :cl)
	(:export plist-keys))

(defpackage party
  (:use :cl :postmodern ))

(defpackage product
	(:use :cl :postmodern :s-sql :party)
	(:export save-product list-products))

(defpackage business
	(:use :cl :party :postmodern :s-sql)
	(:export find-business))

(defpackage web-templates
	(:use :cl :cl-who :parenscript :hunchentoot )
	(:export with-html))

(defpackage web-utils
	(:use :cl :cl-who :hunchentoot )
	(:export json-encode-list-of-plists 
					 for-list-of-plists-convert-all-simple-dates-to-y-m-d))

(defpackage web
	(:use :cl :asdf :database :cl-who :hunchentoot :business :product :web-templates))
