(in-package :people-and-organizations)

(defun load-data () 
	(insert-name-type-records)
	(insert-party-type-records)
	(insert-marital-status-type-records)
	(insert-gender-type-records)
	(insert-party-role-type-records))

(defun insert-name-type-records () 
	"Initial data load for name types"
	(execute ( :insert-into 'name_types :set 'name "First" ))
	(execute ( :insert-into 'name_types :set 'name "Last" ))
	(execute ( :insert-into 'name_types :set 'name "Name" ))
	(execute ( :insert-into 'name_types :set 'name "Middle" ))
	(execute ( :insert-into 'name_types :set 'name "Nickname" )))

(defun insert-party-type-records() 
	"Initial data load of party types"
	(execute ( :insert-into 'party_types :set 'name "Person" ))
	(execute ( :insert-into 'party_types :set 'name "Organization" ))
	(let 
			((org-id (query ( :select 'id :from 'party_types :where (:= 'name "Organization")) :single)))
		(execute ( :insert-into 'party_types :set 'name "Legal Organization"  'parent org-id))
		(execute ( :insert-into 'party_types :set 'name "Informal Organization"  'parent org-id)))
	(let 
			((org-id (query ( :select 'id :from 'party_types :where (:= 'name "Legal Organization")) :single)))
		(execute ( :insert-into 'party_types :set 'name "Corporation"  'parent org-id))
		(execute ( :insert-into 'party_types :set 'name "Government Agency"  'parent org-id)))
	(let 
			((org-id (query ( :select 'id :from 'party_types :where (:= 'name "Informal Organization")) :single)))
		(execute ( :insert-into 'party_types :set 'name "Team"  'parent org-id))
		(execute ( :insert-into 'party_types :set 'name "Family"  'parent org-id))
		(execute ( :insert-into 'party_types :set 'name "Club"  'parent org-id))))

(defun insert-marital-status-type-records ()
	(execute ( :insert-into 'marital_status_types :set 'name "Married"))
	(execute ( :insert-into 'marital_status_types :set 'name "Single"))
	(execute ( :insert-into 'marital_status_types :set 'name "Divorced")))

(defun insert-gender-type-records ()
	(execute ( :insert-into 'gender_types :set 'name "Female"))
	(execute ( :insert-into 'gender_types :set 'name "Male")))
			
(defun insert-party-role-type-records()
	"Initial data load of party roles"
	(execute(:insert-into 'party_role_types :set 'name "Person"))
	(execute(:insert-into 'party_role_types :set 'name "Organization"))
	(let
			(( id (query( :select 'id :from 'party_role_types :where (:= 'name "Organization")) :single)))
		(execute( :insert-into 'party_role_types :set 'name "Organization Unit" 'parent id))
		(execute( :insert-into 'party_role_types :set 'name "Internal Organization" 'parent id)))
	(let
			(( id (query( :select 'id :from 'party_role_types :where (:= 'name "Organization Unit")) :single)))
		(execute( :insert-into 'party_role_types :set 'name "Parent Organization" 'parent id))
		(execute( :insert-into 'party_role_types :set 'name "Other Organization Unit" 'parent id))
		(execute( :insert-into 'party_role_types :set 'name "Subsidiary" 'parent id))
		(execute( :insert-into 'party_role_types :set 'name "Deparment" 'parent id))
		(execute( :insert-into 'party_role_types :set 'name "Division" 'parent id))))
