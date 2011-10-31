;;; Main dispatch 
(in-package :dispatch)

(setf cl-who::*html-mode* :HTML5)
(setf parenscript::*js-string-delimiter* #\")
(setf hunchentoot::*show-lisp-errors-p* t)
(setf *catch-errors-p* t)

(defun main-page()	
	(with-html ))

(setq *default-handler* 'main-page)

(define-easy-handler(business-get :uri "/business-get" :default-request-type :get)()
	(with-html-output-to-string (*standard-output* nil :prologue nil :indent t)
		(format t "{\"success\":true, \"data\": ~a}" 
						(encode-json-plist-to-string (business::find-business)))))

(define-easy-handler(business-save :uri "/business-save" :default-request-type :post)	
		((id :parameter-type 'integer)
		 name)
	(with-html-output-to-string( *standard-output* nil :prologue nil :indent t)
		(business::save-business id name)))

(define-easy-handler( product-save :uri "product-save" :default-request-type :post)
		((name) (product-type))
	(with-html-output-to-string( *standard-output* nil :prologue nil :indent t)
		(format t "{\"success\": true, \"data\": ~a}" 
						(product:save-product( name product-type)))))

(define-easy-handler(product-list :uri "/product-list" :default-request-type :get)()
	(with-html-output-to-string(*standard-output* nil :prologue nil :indent t)
		(format t "{\"success\": true, \"data\": ~a}"
						(web-utils:json-encode-list-of-plists( 
																									 web-utils:for-list-of-plists-convert-all-simple-dates-to-y-m-d (product:list-products))))))

(push( create-folder-dispatcher-and-handler "/js/" "../javascript/") *dispatch-table*)

(connect-to-database)

(defvar *ht-server* (start (make-instance 'acceptor :port 8080)))
