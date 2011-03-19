;;;; package.lisp

(defpackage #:party
  (:use :cl :postmodern )
  (:export :connect-to-db))

(defpackage #:web
	(:use :cl-who :hunchentoot :cl)
	(:export :start))
