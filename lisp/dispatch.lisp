;;; Main dispatch 

(in-package :web)

(setf *js-string-delimiter* #\")
(setf hunchentoot::*show-lisp-errors-p* t)
(setf *catch-errors-p* t)

(defmacro with-html (&body body)
	"Wraps the body provided in an html template"
	
	`(cl-who:with-html-output-to-string 
			 (*standard-output* nil :prologue t :indent t) 
		 (:html
			(:head 

			 (loop for extjs-css-file in '("reset-min.css" "ext-all.css")
						do (htm
								(:link :href (conc "/js/extjs/resources/css/" extjs-css-file) 
											 :type "text/css"
											 :rel "stylesheet")))

			 (loop for core-extjs-js in '("adapter/ext/ext-base-debug.js" "ext-all-debug.js")
						do ( htm
								 (:script :src (conc "/js/extjs/" core-extjs-js) 
													:type "text/javascript")))
			 
			 (loop for grid-extjs in '("Filter.js" "GridFilters.js" "BooleanFilter.js" "DateFilter.js" 
																 "ListFilter.js" "ListMenu.js" "NumericFilter.js" "RangeMenu.js" 
																 "StringFilter.js")
						do (htm
								(:script :src (conc "/js/extjs/ux/gridfilters/" grid-extjs)
												 :type "text/javascript")))

			 (loop for bizondemand-js in '("customisations.js" "utils/BaseForm.js" "business/Window.js"
																		 "party/Form.js" "party/Window.js" "products/Goods.js"
																		 "products/Services.js" "products/Products.js" "bizondemand.js")
						do (htm
								(:script :src( conc "/js/bizondemand/" bizondemand-js)
												 :type "text/javascript")))
			 (:title "Business On Demand"))
			(:script :type "text/javascript"
							 (str (ps
											(*Ext.on-ready( lambda()
																			 (new (*biz-on-demand.-desktop)))))))
			(:body ,@body))))

(defun main-page()	
	(with-html
			(:h1 "Hello world")))

(hunchentoot:define-easy-handler(get-business :uri "/business"
																	:default-request-type :get)()
	(with-html
		(:h1 "Business")))

(define-easy-handler(create-business :uri "business"
																		 :default-request-type :post)
		(business-name)
	(format t "post-business - ~a" business-name))

(setq *dispatch-table* 
			(nconc
			 (list 'dispatch-easy-handlers
						 ( create-folder-dispatcher-and-handler "/js/" "../javascript/")
						 ( create-prefix-dispatcher "/" 'main-page))))

(defvar *ht-server* (start (make-instance 'acceptor :port 8080)))

