;;; Main dispatch 

(in-package #:web)

(defmacro with-html (&body body)
	`(cl-who:with-html-output-to-string 
		(*standard-output* nil :prologue t) 
			,@body))

(defun main-page()	
	(with-html
			(:html
			(:head 
				(:link :type "text/css" :href "js/extjs/resources/css/reset-min.css" :rel "stylesheet")
				(:link :type "text/css" :href "js/extjs/resources/css/ext-all.css" :rel "stylesheet")
				(:script :src "js/extjs/adapter/ext/ext-base-debug.js" :type "text/javascript")
				(:script :src "js/extjs/ext-all-debug.js" :type "text/javascript")
				(:title "Hello world"))
			(:body 
			 (:h1 "Hello world")))))

(setq hunchentoot:*dispatch-table* 
	(list 
		( hunchentoot:create-folder-dispatcher-and-handler "/js/" "../javascript/")
		( hunchentoot:create-prefix-dispatcher "/" 'main-page)))

(defvar *ht-server* (hunchentoot:start (hunchentoot::make-instance 'hunchentoot:acceptor :port 8080)))

