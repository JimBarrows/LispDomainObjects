;;;; package.lisp

(in-package :cl-user)

(defpackage database-utils
	(:use :cl :postmodern)
	(:export connect-to-database))

(defpackage utils
	(:use :cl)
	(:export plist-keys))

(defpackage web-common
	(:use :cl :parenscript :cl-who :hunchentoot :simple-date :database-utils)
	(:export 
	 add-button
	 add-css-file 
	 add-javascript-file 
	 add-menu 
	 delete-button
	 edit-button
	 *edit-image*
	 input-date-field
	 input-text-field
	 main-template 
	 menu-entry 
	 menu-item 
	 primary-key-field
	 set-page-title 
	 type-select-field
	 add-button ))

(defpackage people-and-organizations
  (:use :cl :cl-who :database-utils :postmodern :simple-date :web-common :utils)
  (:export build-database))

;(defpackage product
;	(:use :cl :postmodern :s-sql :party)
;	(:export save-product list-products))

(defpackage business
	(:use :cl :people-and-organizations :database-utils :postmodern :s-sql)
	(:export *business* find-business))

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
