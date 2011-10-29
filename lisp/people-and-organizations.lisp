;;;; party.lisp

(in-package :party)

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

(defun create-organization (name)
	"Create a party of type organization, with the given name"
	(query ( :insert-into 'parties 
													:set 'type "organization" 'name name 
													:returning 'id) :single))

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
