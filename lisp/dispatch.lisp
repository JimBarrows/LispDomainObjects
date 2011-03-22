;;; Main dispatch 

(in-package #:web)

(+tag-library :html)
(+tag-library :script)

(deftemplates ;:tag-library-packages( "hh-web-tags")
	:template-packages( "bizondemand")
	:templates((hello-world "hello-world.lisp")))
	

;;(defmacro with-html (&body body)
;;	(format nil body))
	;;`(cl-who:with-html-output-to-string (*standard-output* nil :prologue t)
	;	 ,@body))

(defun main-page()	
	(format nil (hello-world)))
;;	(with-html
;;			(:html
;			(:head 
;			 (:title "Hello world"))
;			(:body 
;			 (:h1 "Hello world")))))

(setq hunchentoot:*dispatch-table* 
	(list 
		( hunchentoot:create-prefix-dispatcher "/" 'main-page)))

(defvar *ht-server* (hunchentoot:start (hunchentoot::make-instance 'hunchentoot:acceptor :port 8080)))

