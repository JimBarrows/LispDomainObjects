;;These functions all manipulate product model data.
;;A product is either a good or a service.

(in-package :product)

(defun create-good( name &optional (introduction-date introduction-date-supplied-p) 
									 sales-discontinuation-date support-discontinuation-date comment)
	"Creates a good in the database.  The database will default introduction-date to today."
	(query (:insert-into 'goods
											 :set 'name name
											 'introduction-date indtroduction-date
											 'sales-discontinuation-date sales-discontinuation-date
											 'support-discontinuation support-discontinuation-date
											 'comment comment
											 :returning 'id) :single))

