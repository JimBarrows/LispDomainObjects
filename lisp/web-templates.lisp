;;This is where all templates for html views are located.

(in-package :web-templates)

(deffun add-css (css-list)
	(htm (:link :href (first css-list) :rel "stylesheet" :type "text/css") (add-css (rest css-list))))

(defmacro with-html (&body body)
	"Wraps the body provided in an html template"
	
	`(cl-who:with-html-output-to-string 
			 (*standard-output* nil :prologue t :indent t) 
		 (:html
			(:head 
			 (:link :href "http://twitter.github.com/bootstrap/assets/css/bootstrap-1.1.1.min.css" :rel "stylesheet" :type "text/css")
			 (:script :src "https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" :type "text/javascript")
			 (:script :src "https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js" :type "text/javascript")
			 (:title "Business On Demand")
			 (:script :type "text/javascript"
							 (str 
									(ps (doc-ready
												(progn 
																(chain ($ "body") (bind "click" (lambda (e)( 
																																			 				 (chain ($ "a.menu") (parent "li") (remove-class "open"))))))
																(chain ($ "a.menu") (click (lambda (e) (
																																				progn 
																																				 (defvar $li ( chain ($ this) (parent "li") (toggle-class "open"))
																																				 false)))))))
									))))
			(:body :style "padding-top: 40px"
						 (:div :class "topbar-wrapper" :style "z-index: 5"
									 (:div :class "topbar" 
												(:div :class "fill"
															(:div :class "container"
																		(:h3
																		 (:a :href "#" "Business On Demand"))
																		(:ul :class "nav"
																				 (:li :class "menu"
																							(:a :href "#" :class "menu" "CRM")
																							(:ul :class "menu-dropdown"
																									 (:li
																										(:a :href "#" "Customers"))
																									 (:li
																										(:a :href "#" "Cases"))
																									 (:li
																										(:a :href "#" "Conversations")))))
																		)))) ,@body))))
