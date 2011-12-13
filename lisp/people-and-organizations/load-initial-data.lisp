(in-package :people-and-organizations)

(defun load-data () 
	(insert-name-type-records)
	(insert-party-type-records)
	(insert-marital-status-type-records)
	(insert-gender-type-records))

(defun insert-name-type-records () 
	"Initial data load for name types"
	(execute ( :insert-into 'name_types :set 'name "First" 'version 0))
	(execute ( :insert-into 'name_types :set 'name "Last" 'version 0))
	(execute ( :insert-into 'name_types :set 'name "Name" 'version 0))
	(execute ( :insert-into 'name_types :set 'name "Middle" 'version 0))
	(execute ( :insert-into 'name_types :set 'name "Nickname" 'version 0)))

(defun insert-party-type-records() 
	"Initial data load of party types"
	(execute ( :insert-into 'party_types :set 'name "Person" 'version 0))
	(execute ( :insert-into 'party_types :set 'name "Organization" 'version 0))
	(let 
		((org-id (query ( :select 'id :from 'party_types :where (:= 'name "Organization")) :single)))
			(execute ( :insert-into 'party_types :set 'name "Legal Organization" 'version 0 'parent org-id))
			(execute ( :insert-into 'party_types :set 'name "Informal Organization" 'version 0 'parent org-id)))
	(let 
		((org-id (query ( :select 'id :from 'party_types :where (:= 'name "Legal Organization")) :single)))
			(execute ( :insert-into 'party_types :set 'name "Corporation" 'version 0 'parent org-id))
			(execute ( :insert-into 'party_types :set 'name "Government Agency" 'version 0 'parent org-id)))
	(let 
		((org-id (query ( :select 'id :from 'party_types :where (:= 'name "Informal Organization")) :single)))
			(execute ( :insert-into 'party_types :set 'name "Team" 'version 0 'parent org-id))
			(execute ( :insert-into 'party_types :set 'name "Family" 'version 0 'parent org-id))
			(execute ( :insert-into 'party_types :set 'name "Club" 'version 0 'parent org-id))))

(defun insert-marital-status-type-records ()
	(execute ( :insert-into 'marital_status_types :set 'name "Married"))
	(execute ( :insert-into 'marital_status_types :set 'name "Single"))
	(execute ( :insert-into 'marital_status_types :set 'name "Divorced")))

(defun insert-gender-type-records ()
	(execute ( :insert-into 'gender_types :set 'name "Female"))
	(execute ( :insert-into 'gender_types :set 'name "Male")))
			
