;;This is where the main template, and the functions for working with it are located.

(in-package :web-common)

(setf *PS-PRINT-PRETTY* t)
(setf *INDENT-NUM-SPACES* 2)
(setf cl-who::*html-mode* :HTML5)
(setf parenscript::*js-string-delimiter* #\")
(setf hunchentoot::*show-lisp-errors-p* t)
(setf *catch-errors-p* t)

(defvar *application-name* "MBMS")

(defparameter *javascript-files* '("https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" "https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js")
"List of javascript files to include in the template")

(defparameter *css-files* '( "http://twitter.github.com/bootstrap/1.4.0/bootstrap.css")
"List of css files to include in the template")

(defvar *menus* nil
"List of menus to add to the main toolbar")

(defparameter *page-title* "MBMS"
"The title that goes in the head tags, and the main menu bar")

(defun input-text-field ( name label value &optional error-message)
"Creates a text box, with optional error message"
(cl-who:with-html-output (*standard-output* nil :indent t)
	(:div :class (if (null error-message) "clearfix" "clearfix error")
				(:label :for name (str label))
				(:div :class "input"
							(:input :type "text" :name name :value value))
				(unless (null error-message)
					(htm (:span :class "help-inline" (str error-message)))))))

(defun add-button ( uri entity-name)
"Creates a button for adding an entity to the datbase. Uses the uri provided to direct the user to the appropriate page"
(cl-who:with-html-output (*standard-output* nil :indent t)
	(:a :href uri (cl-who:fmt "Add ~a" entity-name))))

(defun edit-button ( uri entity-name params &optional (icon-only-p t))
"Create a button for editing an entity and saving it to the database.  Uses the uri to direc the user to the page.  Attaches the params, which must be a plist, to the end of the URI.  If icon-only-p is true then no text is emitted, only the icon."
(let ((uri-with-params (concatenate 'string uri (format nil "~@[?~{~(~a~)=~a~^&~}~]" params)))
			(label (concatenate 'string "Edit " entity-name)))
	(cl-who:with-html-output (*standard-output* nil :indent t)
		(if icon-only-p
				(cl-who:htm (:a :href uri-with-params
												(:img :src *edit-image* :alt label)))
				(cl-who:htm (:a :href uri-with-params (cl-who:str label)))))))

(defun delete-button ( uri entity-name params &optional (icon-only-p t))
"Creates a button for deleting an entity."
(let (( uri-with-params ( concatenate 'string uri (format nil "~@[?~{~(~a~)=~a~^&~}~]" params)))
			(label (concatenate 'string "delete " entity-name)))
	(cl-who:with-html-output (*standard-output* nil :indent t)
		(if icon-only-p
				(cl-who:htm (:a :href uri-with-params
												(:img :src *delete-image* :alt label)))
				(cl-who:htm (:a :href uri-with-params (cl-who:str label)))))))

(defun add-javascript-file (filename)
"Adds a javascript file to the list of files to be included in the template"
(setf *javascript-files* (append *javascript-files* filename)))

(defun add-css-file (filename)
"Adds a css file to the list of files to be included in the template"
(setf *css-files* (append *css-files* filename)))

(defun add-menus( new-menu-list)
"Adds a menu definition to the list of menus to be included in the template"
(dolist (menu new-menu-list)
	(pushnew menu *menus* :test (lambda (left right) 
																( equal (menu-entry-name left) (menu-entry-name right))))))

(defstruct menu-entry
	name
	items)

(defstruct sub-menu-entry
	name
	url)

(defun sub-menu ( menu-item-list)
"Add a menu item to the menu"
(unless ( null menu-item-list)
	(let ((cur-menu-item (first menu-item-list)))
		(cl-who:with-html-output (*standard-output*)
			(:li
			 (:a :href (sub-menu-entry-url cur-menu-item)
					 (format *standard-output* 
									 (sub-menu-entry-name cur-menu-item))))))
	(sub-menu (rest menu-item-list))))

(defun menu ( menu-entry)
"Adds menus to the toolbar."
(unless (null menu-entry)
		(let ((cur-menu (first menu-entry)))
				 (cl-who:with-html-output (*standard-output* nil :indent t)
					 (:a :href "#" :class "menu"  (format *standard-output* (menu-entry-name cur-menu)))
					(:ul :class "menu-dropdown"
							 (sub-menu (menu-entry-items cur-menu))))
		(menu (rest menu-entry)))))

(defun javascript-links (javascript-file-list)
"Create javascript link tags from the list passed in."
( unless (null javascript-file-list) 
		 (cl-who:with-html-output (*standard-output* nil :indent t) 
		 (:script :src (first javascript-file-list) :type "text/javascript") 
		 (javascript-links (rest javascript-file-list)))))

(defun css-links (css-list)
"Cretae css link tags from the list passed in."
( unless (null css-list)
	(cl-who:with-html-output (*standard-output* nil :indent t)
		(:link :href (first css-list) :rel "stylesheet" :type "text/css")
		(css-links (rest css-list)))))

(defun set-page-title ( title)
"Creates the html necessary to output a page title"
(setf *page-title* title))


(defmacro main-template (&body body)
	"Wraps the body provided in an html template"
	`(cl-who:with-html-output-to-string 
			 (*standard-output* nil :prologue t :indent t) 
		 (:html
			(:head 
			 (:meta :charset "utf-8")
			 (:title (cl-who:fmt "~a - ~a" *application-name* *page-title*))
			 (css-links *css-files*)
			 (javascript-links *javascript-files*)
			 (:script :type "text/javascript"
								(str (ps ( $ document (ready (lambda () (progn 
																													(chain ($ "body") (bind "click" (lambda (e) ( chain ($ "a.menu") (parent "li") (remove-class "open")))))
																													(chain ($ "a.menu") (click (lambda (e) (progn (defvar $li (chain ($ this) (parent "li") (toggle-class "open"))) false)))) false))))))))
			(:body :style "padding-top: 40px"
						 (:div :class "topbar" 
									 (:div :class "fill"
												 (:div :class "container"
															 (:a :class "brand" :href "/" (cl-who:fmt "~a" *application-name*))
															 (:ul :class "nav"																				 
																		(:li :class "menu"
																				 (menu *menus*))))))
						 (:div :class "container"
									 (:div :class "content"
												 (:div :class "page-header"
															 (:h1 (cl-who:str *page-title*)))
												 ,@body))))))
