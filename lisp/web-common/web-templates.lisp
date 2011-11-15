;;This is where the main template, and the functions for working with it are located.

(in-package :web-common)

(setf *PS-PRINT-PRETTY* t)
(setf *INDENT-NUM-SPACES* 2)
(setf cl-who::*html-mode* :HTML5)
(setf parenscript::*js-string-delimiter* #\")
(setf hunchentoot::*show-lisp-errors-p* t)
(setf *catch-errors-p* t)

(defparameter *javascript-files* '("https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" "https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js")
"List of javascript files to include in the template")

(defparameter *css-files* '( "http://twitter.github.com/bootstrap/assets/css/bootstrap-1.1.1.min.css")
"List of css files to include in the template")

(defvar *menus* nil
"List of menus to add to the main toolbar")

(defvar *page-title* "MBMS"
"The title that goes in the head tags, and the main menu bar")

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
				 (cl-who:with-html-output (*standard-output*)
					 (:a :href "#" :class "menu"  (format *standard-output* (menu-entry-name cur-menu)))
					(:ul :class "menu-dropdown"
							 (sub-menu (menu-entry-items cur-menu))))
		(menu (rest menu-entry)))))

(defun javascript-links (javascript-file-list)
"Create javascript link tags from the list passed in."
( unless (null javascript-file-list) 
		 (cl-who:with-html-output (*standard-output*) 
		 (:script :src (first javascript-file-list) :type "text/javascript") 
		 (javascript-links (rest javascript-file-list)))))

(defun css-links (css-list)
"Cretae css link tags from the list passed in."
( unless (null css-list)
	(cl-who:with-html-output (*standard-output*)
		(:link :href (first css-list) :rel "stylesheet" :type "text/css")
		(css-links (rest css-list)))))

(defun title () 
"prints the *page-title* to standard-out, formatted"
(format *standard-output* "~a" *page-title*))

(defmacro with-html (&body body)
	"Wraps the body provided in an html template"
	
	`(cl-who:with-html-output-to-string 
			 (*standard-output* nil :prologue t :indent t) 
		 (:html
			(:head 
			 (css-links *css-files*)
			 (javascript-links *javascript-files*)
			 (:title (title))
			 (:script :type "text/javascript"
								(str (ps ( $ document (ready (lambda () (progn 
																													(chain ($ "body") (bind "click" (lambda (e) ( chain ($ "a.menu") (parent "li") (remove-class "open")))))
																													(chain ($ "a.menu") (click (lambda (e) (progn (defvar $li (chain ($ this) (parent "li") (toggle-class "open"))) false)))) false))))))))

			(:body :style "padding-top: 40px"
						 (:div :class "topbar-wrapper" :style "z-index: 5"
									 (:div :class "topbar" 
												(:div :class "fill"
															(:div :class "container"
																		(:h3
																		 (:a :href "/" (title)))
																		(:ul :class "nav"
																				 (:li :class "menu"
																							(menu *menus*)))))))
						 (:div :class "container" ,@body)))))
