;;;; package.lisp

(in-package :cl-user)

(defpackage database-utils
	(:use :cl :postmodern)
	(:export connect-to-database))

(defpackage utils
	(:use :cl)
	(:export plist-keys))

(defpackage people-and-organizations
  (:use :cl :postmodern )
  (:export build-database))

(defpackage web-common
	(:use :cl :parenscript :cl-who :hunchentoot :simple-date :database-utils)
	(:export add-css-file add-javascript-file add-menu with-html))

;(defpackage product
;	(:use :cl :postmodern :s-sql :party)
;	(:export save-product list-products))

;(defpackage business
;	(:use :cl :party :postmodern :s-sql)
;	(:export find-business))

;(defpackage jquery-utils
;	(:use :cl :parenscript)
;	(:export $ doc-ready))

;(defpackage twitter-bootstrap
;	(:use :cl :cl-who :jquery-utils))

;(defpackage web-templates
;	(:use :cl :cl-who :parenscript :hunchentoot :jquery-utils )
;	(:export with-html))

;(defpackage web-utils
;	(:use :cl :cl-who :hunchentoot :simple-date )
;	(:export json-encode-list-of-plists 
;					 for-list-of-plists-convert-all-simple-dates-to-y-m-d))

;(defpackage dispatch
;	(:use :cl :cl-who :hunchentoot :database-utils :business :product 
;				:web-templates))
