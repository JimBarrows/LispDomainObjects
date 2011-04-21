;;; Main dispatch 
(in-package :web)

(setf *js-string-delimiter* #\")
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

(define-easy-handler(product-list :uri "/product-list" :default-request-type :get)()
	(with-html-output-to-string(*standard-output* nil :prologue nil :indent t)
		(format t "{\"success\": true, \"data\": ~a}"
						(web-utils::json-encode-list-of-plists( product:list-products)))))

(push( create-folder-dispatcher-and-handler "/js/" "../javascript/") *dispatch-table*)

(party::connect-to-database)
(defvar *ht-server* (start (make-instance 'acceptor :port 8080)))

