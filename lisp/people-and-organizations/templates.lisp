(in-package :people-and-organizations)

(defun people-and-organizations-list ()
	"Creates a list of people and organizations"
;	(set-page-title "People and Organizations")
	(main-template
	 (:div :class "content"
				 (add-button *add-organization-url* "Organization")
				 (add-button *add-person-url* "Person")
				 (let ((result-list (people-and-organizations-query)))
					 (loop for i from 0 to (list-length result-list) by 3 do
								(people-and-organizations-row (list (nth i result-list) 
																										(nth (+ 1 i) result-list)
																										(nth (+ 2 i) result-list))))))))

(defun people-and-organizations-row( row-list)
"Writes one row of the list"
(cl-who:with-html-output (*standard-output* nil :indent t)
	(:div :class "row"
				(dolist (current-cell row-list)
					(people-and-organizations-cell current-cell)))))

(defun people-and-organizations-cell ( party)
"Writes one cell of the entire list"
(cl-who:with-html-output (*standard-output* nil :indent t)
	(:div :class "span-one-third"
				(vcard party))))
												 
(defun vcard (party)
	"Generates an html version of the vcard format"
	(unless (null party)
		(let (( type (getf party :type))
						( first-name (getf party :first-name))
						( middle-name (getf party :middle-name))
						( last-name (getf party :last-name)))
			(cl-who:with-html-output (*standard-output* nil :indent t)
				(:section :class "vcard"
									(:span :class (if (equal type "Person") "fn" "org fn" )
												 (if (equal type "Person") 
														 (fmt "~a ~a ~a " first-name middle-name last-name)
														 (str last-name)))
												 (web-common:edit-button *edit-organization-url* "Vcard" 
																								 (let 
																										 ((param-list '(:organization-id))) 
																									 (reverse 
																										(push (getf party :id) param-list))))
												 (web-common:delete-button *delete-organization-url* "Vcard"
																									 (let
																											 ((param-list '(:organization-id)))
																										 (reverse
																											(push (getf party :id) param-list)))))))))

(defun organization-form ( &key (organization-id 0 organization-id-p) name-error-message)
	"Creates the basic template to add an organization. name-error-message is optional."
	(if organization-id-p
			(set-page-title "Edit Organization")
			(set-page-title "Add Organization"))
	(let ( (organization (find-organization organization-id)))
		(main-template 
			(:form :action *save-organization-url* :method "post"
						 (if organization-id-p 
								 (primary-key-field "organization-id" organization-id))
						 (input-text-field "name" 
															 "Organization Name" 
															 (getf organization :name) 
															 name-error-message)
						 (type-select-field "type-id" "Type" (organization-type-list) 
																:selected (getf organization :type))
						 (cl-who:htm (:div :class "actions"
															 (:button :class "btn primary" :name "save" :type "submit" "Save")))))))

(defun person-form ( &key (person-id 0 person-id-p) 
										first-name-error 
										middle-name-error 
										last-name-error 
										marital-status-date-range-error)
	"Create a form for a person"
	(if person-id-p
		(set-page-title "Edit Person")
		(set-page-title "Add Person"))
	(let (( person (find-person person-id)))
		(main-template
		 (:form :action *save-person-url* :method "post"
						(if person-id-p
								(primary-key-field "person-id" person-id))
						(input-text-field "first-name" "First Name" "" first-name-error) 
						(input-text-field "middle-name" "Middle Name" "" middle-name-error) 
						(input-text-field "last-name" "Last Name" "" last-name-error) 
						(type-select-field "gender-type-id" "Gender" (select-all-gender-types) :selected (getf person :gender))
						(type-select-field "marital-status-id" 
															 "Marital Status" (select-all-marital-status-types) :selected (getf person :marital-status-type))
						(input-date-field "marital-status-from" "From" "")
						(input-date-field "marital-status-thru" "Thru" marital-status-date-range-error)
						(htm (:div :class "actions"
											 (:button :class "btn primary" :name "save" :type "submit" "Save")))))))

(defun save-organization ( organization-id name type-id)
"Saves an organization to the database, sets a message and returns to the list"
(let (( name (string-trim " " name)))
	(if (equal "" name) 
			(organization-form :name-error-message "Name is required")
			(progn
				(if (null organization-id)
						(create-organization name type-id)
						(update-organization organization-id name type-id))
				(hunchentoot:redirect *people-and-organizations-url*)))))

(defun save-person ( first-name middle-name last-name gender-type-id marital-status-id marital-status-from marital-status-thru &optional (person-id 0 person-id-p))
	"Validates the parameters and inserts the records into the database."
	(let ((first-name (string-trim " " first-name))
				(middle-name (string-trim " " middle-name))
				(last-name (string-trim " " last-name))
				(marital-status-thru (string-trim " " marital-status-thru)))
				(if (and (equal "" first-name) 
								 ( equal "" last-name))
						(person-form :first-name-error "Either a first name or a last name must be provided" :last-name-error "Either a first name or a last name must be provided")
						(progn
							(if person-id-p
									(update-organization first-name middle-name last-name person-id)
									(insert-person first-name middle-name last-name gender-type-id marital-status-id marital-status-from (if (equal "" marital-status-thru) :null marital-status-thru)))
							(hunchentoot:redirect *people-and-organizations-url*)))))

(defun delete-organization ( organization-id)
"Deletes an organization to the database, sets a message and returns to the list"
(if (null organization-id)
						(print "woops, no id")
						(delete-from-organization organization-id))
				(hunchentoot:redirect *people-and-organizations-url*))