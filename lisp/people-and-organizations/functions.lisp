;;;; This file provides functions for dealing with the various models of the people-and-organizations system

(in-package :people-and-organizations)

(defun build-database () 
	"Builds the database, from scratch, by dropping everything first, then creating everything and loading the initial data"
	(drop-tables)
	(create-tables)
	(load-data))

(defun people-and-organizations-query ()
"Create a list of people and organizations"
(query 
 ( :order-by 
	 (:select 'party_names.name 'party_types.name
						:from 'parties 'party_names 'party_types
						:where (:and 
										(:= 'parties.id 'party_names.party_id)
										(:= 'parties.type 'party_types.id)))
						'party_names.name)
 :plists))


(defun create-organization (name type-id)
	"Create a party of type organization, with the given name"
	(with-transaction ()
			(let 
					( ( party-id (query ( :insert-into 'parties :set 
																						 'type type-id
																						 'version 0
																						 :returning 'id) :single)))
				( execute ( :insert-into 'party_names :set
																 'name_type_id (find-name-type-id "Name")
																 'party_id party-id
																 'name name)))))

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


(defun update-organization (id name)
	"Update the organization name."
	(execute ( :update 'parties :set 'name name :where (:= 'id id))))

(defun find-organization(id)
	"Find the organization by it's id"
	(query( :select 'id 'name :from 'parties :where (:= 'id '$1)) id :plist))

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
