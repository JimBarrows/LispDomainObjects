;;;; people-and-organizations.lisp

(in-package :people-and-organizations)

(defun build-database () 
	(drop-tables)
	(create-tables)
	(load-data))

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
											( parent :type (or db-null bigint)))))
	( execute  
		( :create-table parties  
										( ( id :type serial :primary-key t)
											( version :type integer )
											( type_id :type bigint ))))
	( execute
		( :create-table party_names
										( ( name_type_id :type bigint :references (name_types :cascade :cascade) )
											( party_id :type bigint :references (parties :cascade :cascade) )
											( name :type string))
										(:primary-key name_type_id party_id)))
	( execute
		( :create-table marital_status_type
										( ( id :type serial :primary-key t)
											( name :type string))))
	( execute
		( :create-table marital_status
										( (from_date :type date)
											(thru_date :type date)
											(party_id :type bigint :references (parties :cascade :cascade) )
											(marital_status_type_id :type bigint :references (marital_status_type :cascade :cascade)))
											(:primary-key party_id marital_status_type_id)))
)

(defun drop-tables()
	"Drop all tables"
;	(alter-table :drop-constraint marital_status_party_id_fkey :cascade)
	( execute
		( :drop-table :if-exists 'party_names  ))
	( execute
		( :drop-table :if-exists 'name_types  ))
	( execute
		( :drop-table :if-exists 'party_types  ))
	( execute
		( :drop-table :if-exists 'marital_status  ))
	( execute
		( :drop-table :if-exists 'parties  ))
	( execute
		( :drop-table :if-exists 'marital_status_type  )))

		
