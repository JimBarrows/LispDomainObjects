;;; Main dispatch 
(in-package :templates)

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
																		 "party/Form.js" "party/Window.js" "products/Products.js" "products/Goods.js"
																		 "products/Services.js" "desktop/Toolbar.js" "desktop/MainPanel.js" 
																		 "Viewport.js")
						do (htm
								(:script :src( conc "/js/bizondemand/" bizondemand-js)
												 :type "text/javascript")))
			 (:title "Business On Demand"))
			(:script :type "text/javascript"
							 (str (ps
											(*Ext.on-ready( lambda()
																			 (new (*biz-on-demand.-viewport)))))))
			(:body ,@body))))
