;;database.lisp
(in-package database-utils)

(defun connect-to-database ()
	"Create connection to database"
	(connect-toplevel "mbms-lisp" "mbms" "mbms" "localhost"))
