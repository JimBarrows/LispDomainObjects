;;database.lisp
(in-package database-utils)

(defun connect-to-database ()
	"Create connection to database"
	(connect "mbms-lisp" "mbms" "mbms" "localhost" :pooled-p t))
