;;; Main dispatch 

(in-package #:web)

(defmacro with-html (&body body)
	`(cl-who:with-html-output-to-string (*standard-output* nil :prologue t)
		 ,@body))

(defun main-page()	
	(with-html
			(:html
			(:head 
			 (:title "Hello world"))
			(:body 
			 (:h1 "Hello world")))))

(setq hunchentoot:*dispatch-table* 
	(list 
		( hunchentoot:create-prefix-dispatcher "/" 'main-page)))

(defvar *ht-server* (hunchentoot:start (hunchentoot::make-instance 'hunchentoot:acceptor :port 8080)))

