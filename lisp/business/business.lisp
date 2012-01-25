;;The business is defined as the organization the software is for.
;;The functions in this file are for manipulating the data for the business 
;;itself and not it's customers, employees etc.

(in-package :business)

;(defparameter *business* find-business)

(defun find-business-id-name()
	"Gets the main business record from the database."
	(query(
				 :select (:as 'parties.id 'id)
								 (:as 'parties.name  'name)
								 :from 'parties 'party_roles 'party_role_types
								 :where (:and
												 (:and
													(:in 'party_role_types.name 
															 (:set "Parent Organization" "Internal Organization"))
													(:= 'party_role_types.id 'party_roles.party_role_type_id))
												 (:= 'party_roles.party_id 'parties.id))) :plist))

(defun find-business()
	(let* (( business-plist (find-business-id-name))
				 ( id (get business-plist 'id))
				 ( name (get business-plist 'name)))
		(people-and-organizations::make-legal-organization :id id :name name)))