;;;; bizondemand.lisp

(in-package :party)

(defun connect-to-database ()
	"Connect to database"
	(connect-toplevel "jimbarrows" "jimbarrows" "jimbarrows" "localhost"))

(defun roles-list ()
	"Retrieve a list of the roles in the roles table"
	(query (:select 'id 'description :from 'roles)))

(defun relationships-list()
	"Retrieve a list of relationships from the relationships table."
	(query(:select 'id 'description :from 'relationships)))

(defun create-organization (name)
	"Create a party of type organization, with the given name"
	(execute ( :insert-into 'parties :set 'type "organization" 'name name :returning 'id)))

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
													'party_id party-id)))

(defun add-relationship-to-role( relationship-name from-party-role-id to-party-role-id)
	"Add a relationship to a party-role"
	(execute ( :insert-into 'party-relationship :set 
													'relationship-id ( :select 'id 
																						 :from 'relationships
																						 :where (:= 'description relationship-name))
													'from_party_role_id from-party-role-id
													'to_party_role_id to-party-role-id)))
