;;The business is defined as the organization the software is for.
;;The functions in this file are for manipulating the data for the business 
;;itself and not it's customers, employees etc.

(in-package :business)

(defun find-business()
	"Gets the main business record from the database."
	(query(:select 'parties.id 'parties.name 
								 :from 'parties 'party_role 'roles 
								 :where (:and
												 (:and
													(:in 'roles.description 
															(:set "Parent Organization" "Internal Organization"))
													(:= 'roles.id 'party_role.role_id))
												 (:= 'party_role.party_id 'parties.id))) :plist))

(defun save-business( id name)
	"Save the business, creating it if there is no id, and updatign the name otherwise."
	(if id 
			(party::update-organization id name) 
			(progn
				(let ((new-id (party::create-organization name)))
					(party::add-role-to-party new-id "Parent Organization")
					(party::add-role-to-party new-id "Internal Organization")))))