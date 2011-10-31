(in-package :common-models)

(defclass date-range ()
	( (from :reader from-date :initarg :from)
		(thru :reader thru-date :initarg :thru)))
