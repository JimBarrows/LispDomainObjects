;;These functions all manipulate product model data.
;;A product is either a good or a service.

(in-package :product)

(defun create-good( name  )									 
	"Creates a good in the database.  The database will default introduction-date to today."
	(query (:insert-into 'products
											 :set 'name name
											 :returning 'id) :single))

(defun list-products()
	"Creates a plist of products returned from the database"
	 (query( :select 'id 
									 'name 
									 'introduction-date 
									 'sales-discontinuation-date 
									 'support-discontinuation-date 
									 'comment :from 'products) 
				 :plists ))