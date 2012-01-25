;; this file handles setting up the database.

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
											( name :type string ))))
	( execute 
		( :create-table party_types 
										( ( id :type serial :primary-key t)
											( name :type string )
											( parent :type (or db-null bigint)))))
	( execute  
		( :create-table parties  
										( ( id :type serial :primary-key t)
											( type_id :type bigint )
											( name :type string)
											( first_name :type string)
											( middle_name :type string)
											(last_name :type string)
											( gender_type_id :type bigint)
											( birthdate :type (or db-null date)))))
	( execute
		( :create-table party_names
										( ( name_type_id :type bigint :references (name_types :cascade :cascade) )
											( party_id :type bigint :references (parties :cascade :cascade) )
											( name :type string))
										(:primary-key name_type_id party_id)))
	( execute
		( :create-table marital_status_types
										( ( id :type serial :primary-key t)
											( name :type string))))

	( execute
		( :create-table marital_statuses
										( (from_date :type date)
											(thru_date :type (or db-null date))
											(party_id :type bigint :references (parties :cascade :cascade) )
											(marital_status_type_id :type bigint :references (marital_status_types :cascade :cascade)))
											(:primary-key party_id marital_status_type_id)))

	( execute
		( :create-table gender_types
										( ( id :type serial :primary-key t)
											( name :type string))))

	( execute
		( :create-table party_role_types
										( ( id :type serial :primary-key t)
											( name :type string )
											( parent :type (or db-null bigint)))))

	( execute
		( :create-table party_roles
										((party_role_type_id :type bigint :references (party_role_types :cascade :cascade))
										 (party_id :type bigint :references (parties :cascade :cascade))
										 (from_date :type date)
										 (thru_date :type (or db-null date)))))

)

(defun drop-tables()
	"Drop all tables"
	( execute
		( :drop-table :if-exists 'party_roles  ))
	( execute
		( :drop-table :if-exists 'party_role_types  ))
	( execute
		( :drop-table :if-exists 'party_names  ))
	( execute
		( :drop-table :if-exists 'name_types  ))
	( execute
		( :drop-table :if-exists 'party_types  ))
	( execute
		( :drop-table :if-exists 'marital_statuses  ))
	( execute
		( :drop-table :if-exists 'parties  ))
	( execute
		( :drop-table :if-exists 'marital_status_types  ))
	( execute
		( :drop-table :if-exists 'gender_types  )))

		
