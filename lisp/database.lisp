;;database.lisp
(in-package database)

(defun connect-to-database ()
	"Create connection to database"
	(connect-toplevel "jimbarrows" "jimbarrows" "jimbarrows" "localhost"))