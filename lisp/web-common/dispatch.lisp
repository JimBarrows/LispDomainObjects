;;; Main dispatch 
(in-package :web-common)

(setf cl-who::*html-mode* :HTML5)
(setf parenscript::*js-string-delimiter* #\")
(setf hunchentoot::*show-lisp-errors-p* t)
(setf *catch-errors-p* nil)
(setf *lisp-errors-log-level* :info)
(setf *lisp-warnings-log-level* :info)

(defun main-page()	
	(set-page-title "Main")
	(main-template ))
		

(setq *default-handler* 'main-page)

(push( create-folder-dispatcher-and-handler "/js/" "../javascript/") *dispatch-table*)
(push( create-folder-dispatcher-and-handler "/img/" "../img/") *dispatch-table*)

(defparameter *edit-image* "/img/silk/pencil.png")
(defparameter *delete-image* "/img/silk/delete.png")

(connect-to-database)

(defvar *ht-server* (start (make-instance 'acceptor :port 8080)))