;;;; This file provides functions for dealing with the various models of the people-and-organizations system

(in-package :people-and-organizations)

(defun select-all-marital-status-types ()
	"Return a list of all marital status types and their id's"
	(query (:select 'id 'name :from 'marital_status_types) :plists))

(defun select-all-gender-types ()
	"Return a list of all gender types and their id's"
	(query (:select 'id 'name :from 'gender_types) :plists))

(defun people-and-organizations-query ()
	"Create a list of people and organizations"
	(query (:order-by 
										(:union
										 (:select (:as 'first_names.name 'first_name)
															(:as 'middle_names.name 'middle_name)
															(:as 'last_names.name 'last_name)
															'parties.id
															(:as 'party_types.name 'type)
															:from 'parties 
															(:as 'party_names 'first_names) 
															'party_types
															(:as 'party_names 'middle_names)
															(:as 'party_names 'last_names)
															(:as 'name_types 'first_name_type)
															(:as 'name_types 'middle_name_type)
															(:as 'name_types 'last_name_type)
															:where (:and (:= 'parties.id 'first_names.party_id)
																					 (:= 'first_names.name_type_id 'first_name_type.id)
																					 (:= 'first_name_type.name "First")
																					 (:= 'parties.id 'middle_names.party_id)
																					 (:= 'middle_names.name_type_id 'middle_name_type.id)
																					 (:= 'middle_name_type.name "Middle")
																					 (:= 'parties.id 'last_names.party_id)
																					 (:= 'last_names.name_type_id 'last_name_type.id)
																					 (:= 'last_name_type.name "Last")
																					 (:= 'parties.type_id 'party_types.id)
																					 (:= 'party_types.name "Person")))
										 (:select "" "" 'names_.name 'parties.id (:as 'party_types.name 'type)
															:from 'parties 
															(:as 'party_names 'names_) 
															(:as 'name_types 'names_type)
															'party_types
															:where (:and (:= 'parties.id 'names_.party_id)
																					 (:= 'names_.name_type_id 'names_type.id)
																					 (:= 'names_type.name "Name")
																					 (:= 'parties.type_id 'party_types.id))))
										'last_name 'first_name 'middle_name )
				 :plists))
					


(defun create-organization (name type-id)
	"Create a party of type organization, with the given name"
	(with-transaction ()
			(let 
					( ( party-id (query ( :insert-into 'parties :set 
																						 'type_id type-id
																						 'version 0
																						 :returning 'id) :single)))
				( execute ( :insert-into 'party_names :set
																 'name_type_id (find-name-type-id "Name")
																 'party_id party-id
																 'name name)))))

(defun insert-person (first-name middle-name last-name gender-type-id birthdate marital-status-type-id marital-status-from &optional (marital-status-thru :null))
	"Insert a person record into the database."
	(with-transaction ()
			(let 
					( ( party-id (query ( :insert-into 'parties :set 
																						 'type_id (find-party-type-id "Person")
																						 'gender_type_id gender-type-id
																						 'birthdate birthdate
																						 'version 0
																						 :returning 'id) :single)))
				( execute ( :insert-into 'party_names :set
																 'name_type_id (find-name-type-id "First")
																 'party_id party-id
																 'name first-name))
				( execute ( :insert-into 'party_names :set
																 'name_type_id (find-name-type-id "Middle")
																 'party_id party-id
																 'name middle-name))
				( execute ( :insert-into 'party_names :set
																 'name_type_id (find-name-type-id "Last")
																 'party_id party-id
																 'name last-name))
				( execute ( :insert-into 'marital_statuses :set
																 'party_id party-id
																 'marital_status_type_id marital-status-type-id
																 'from_date marital-status-from 
																 'thru_date marital-status-thru)))))


(defun update-organization ( organization-id name type-id) 
	"Update an organizations info."
	(with-transaction ()
		(execute ( :update 'parties :set
											 'type_id type-id
											 'version 0
											 :where (:= 'id organization-id)))
		(execute ( :update 'party_names :set 'name name
											 :where (:and (:= 'party_id organization-id) (:= 'name_type_id (find-name-type-id "Name")))))))

(defun update-person ( first-name middle-name last-name person-id)
	"Update a persons info."
	(with-transaction ()
		(execute ( :update 'party_names :set 'name first-name
											 :where (:and (:= 'party_id person-id) (:= 'name_type_id (find-name-type-id "First")))))
		(execute ( :update 'party_names :set 'name middle-name
											 :where (:and (:= 'party_id person-id) (:= 'name_type_id (find-name-type-id "Middle")))))
		(execute ( :update 'party_names :set 'name last-name
											 :where (:and (:= 'party_id organization-id) (:= 'name_type_id (find-name-type-id "Last")))))))

(defun delete-from-organization ( organization-id) 
	"Delete an organizations info."
	(with-transaction ()
		(execute ( :delete-from 'parties 
											 :where (:= 'id organization-id)))
		(execute ( :delete-from 'party_names
											 :where (:and (:= 'party_id organization-id) (:= 'name_type_id (find-name-type-id "Name")))))))


(defun organization-type-list ()
	"Return a list of types that inherit from the organization type"
	(party-type-list (find-party-type-id "Organization")))

(defun party-type-list (party-type-id) 
	"Return a list of party types for an organization-id"
	(query (concatenate 'string 
		"with recursive children(id, name, parent) as "
			"( select id, name, parent "
			"from party_types where id = $1 "
			"union all select p.id, p.name, p.parent "
			"from children, party_types p "
			"where p.parent = children.id) "
			"select id, name, parent from children where id <> $1 "
			"order by name, parent, id ") party-type-id :plists))

(defun find-party-type-id (type-name)
	"Find the id for the provided type-name, or raise an error if it doesn't exist"
	(query
	 ( :select 'id :from 'party_types :where (:= 'name '$1)) type-name :single))

(defun find-name-type-id (name-type)
	"Find the id for the provided name-type, or raise an error if it doesn't exist"
	(query
		( :select 'id :from 'name_types :where (:= 'name '$1)) name-type :single))

(defun roles-list ()
	"Retrieve a list of the roles in the roles table"
	(query (:select 'id 'description :from 'roles)))

(defun children-of-role( role-id)
	"returns the children of a role"
	(query (concatenate 'string "with recursive role_children(id, description, parent) as "
											"( select id, description, parent "
											"from roles where id=$1 "
											"union all select r.id, r.description, r.parent "
											"from role_children rc, roles r "
											"where r.parent = rc.id) "
											"select id, description, parent from role_children where id <> $1 order by parent, description, id") role-id :alists))


(defun relationships-list()
	"Retrieve a list of relationships from the relationships table."
	(query(:select 'id 'description :from 'relationships)))

(defun find-organization(id)
	"Find the organization by it's id"
	(query( :select (:as 'parties.id 'id)  
									(:as 'party_names.name 'name) 
									(:as 'party_types.id 'type-id) 
									(:as 'party_types.name 'type)
									:from 'parties 'party_names 'party_types
									:where (:and (:= 'parties.id 'party_names.party_id) 
															 (:= 'parties.type_id 'party_types.id)
															 (:= 'parties.id '$1))) id :plist))

(defun find-person(id)
	"Find a person by the id"
	(query( :select (:as 'parties.id 'id)  
									(:as 'party_names.name 'name) 
									:from 'parties 'party_names 
									:where (:and (:= 'parties.id 'party_names.party_id) 
															 (:= 'parties.id '$1))) id :plist))

(defun add-role-to-party (party-id role-name)
	"Adds a role, by name to, a party"
	(execute ( :insert-into 'party-role :set 'role-id 
													( :select 'id 
																	 :from 'roles 
																	 :where (:= 'description role-name)) 
													'party-id party-id)))

(defun add-relationship-to-role( relationship-name from-party-role-id to-party-role-id)
	"Add a relationship to a party-role"
	(execute ( :insert-into 'party-relationship :set 
													'relationship-id ( :select 'id 
																						 :from 'relationships
																						 :where (:= 'description relationship-name))
													'from_party_role_id from-party-role-id
													'to_party_role_id to-party-role-id)))
