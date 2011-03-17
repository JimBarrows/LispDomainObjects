(require :hunchentoot)
(require :cl-who)
(require :postmodern)

;;;(hunchentoot:start (make-instance 'hunchentoot:acceptor :port 8080))
(defpackage :helloworld
	(:use :cl :hunchentoot :cl-who))

(in-package :helloworld)

(defmacro with-html (&body body)
	`(with-html-output-to-string (*standard-output* nil :prologue t)
		 ,@body))

(defun main-page()	(with-html
			(:html
			 (:head (:title "Hello world"))
			 (:body 
				(:h1 "Hello world")))))

(setq *dispatch-table* (list ( create-prefix-dispatcher "/lisp" 'main-page)))