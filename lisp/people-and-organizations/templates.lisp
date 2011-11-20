(in-package :people-and-organizations)

(defun people-and-organizations-list ()
"Creates a list of people and organizations"
	(web-common::with-html 
		(:section :id "people-and-organization-list" 
							(web-common:add-button *add-organization-url* "Add Organization")
							(let ((result-list (people-and-organizations-query))
										(columns 3))
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
(cl-who:with-html-output (*standard-output* nil :indent t)
	(:section :class "vcard"
						(:span :class "org" 
									 (cl-who:str (getf party :name)))
						(web-common:edit-button *edit-organization-url* "Vcard" 
																		(let 
																				((param-list '(:organization-id))) 
																			(reverse 
																			 (push (getf party :id) param-list)))))))

(defun organization-form ( &optional organization-id name-error-message)
"Creates the basic template to add an organization. name-error-message is optional."
(web-common::with-html 
	(:form :action *save-organization-url* :method "post"
				 (:div :class (if (null name-error-message) "clearfix" "clearfix error")
							 (:label :for "name" "Organization Name")
							 (:div :class "input"
										 (:input :type "text" :name "name"))
							(:span :class "help-inline" (cl-who:fmt "~a" name-error-message)))
				 (:div :class "clearfix"
							 (:label :for "type-id" "Type")
							 (:div :class "input"
										 (:select :name "type-id" 
															(loop for cur-org-type in (organization-type-list)
																 do (cl-who:htm
																		 (:option :value (getf cur-org-type :id) (cl-who:fmt "~a" (getf cur-org-type :name))))))))
				 (:div :class "actions"
							 (:button :class "btn primary" :name "save" :type "submit" "Save")))))

(defun save-organization ( name type-id)
"Saves an organization to the database, sets a message and returns to the list"
(let (( name (string-trim " " name)))
	(if (equal "" name) 
			(organization-form "Name is required")
			(progn
				(create-organization name type-id)
				(hunchentoot:redirect *people-and-organizations-url*)))))