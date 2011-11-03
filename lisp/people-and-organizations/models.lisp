;;;; people-and-organizations.lisp

(in-package :people-and-organizations)

(defun create-tables ()
	"Create all the tables needed for the people and organizations section"
	( execute 
		( :create-table name_types 
			( ( id :type serial :primary-key t)
				( version :type integer )
				( name :type string ))))
	( execute 
		( :create-table party_types 
			( ( id :type serial :primary-key t)
				( version :type integer )
				( name :type string )
				( parent :type bigint))))
	( execute  
		( :create-table party  
			( ( id :type serial :primary-key t)
				( version :type integer )
				( type :type string )))))

(defun drop-tables()
	"Drop all tables"
	( execute
		( :drop-table :if-exists 'party  ))
	( execute
		( :drop-table :if-exists 'party_types  ))
	( execute
		( :drop-table :if-exists 'name_types  )))

		
