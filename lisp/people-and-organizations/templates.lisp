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
(unless (null party)
	(cl-who:with-html-output (*standard-output* nil :indent t)
		(:section :class "vcard"
							(:span :class "org" 
										 (cl-who:str (getf party :name)))
							(web-common:edit-button *edit-organization-url* "Vcard" 
																		(let 
																				((param-list '(:organization-id))) 
																			(reverse 
																			 (push (getf party :id) param-list))))))))

(defun organization-form ( &optional (organization-id 0) name-error-message)
"Creates the basic template to add an organization. name-error-message is optional."
(with-html 
	(let ( ( organization (find-organization organization-id)))
		(cl-who:htm 
		 (:form :action *save-organization-url* :method "post"
						(unless (null organization) (cl-who:htm 
																				 (:input :type "hidden" :name "organization-id" :value organization-id)))
						(:div :class (if (null name-error-message) "clearfix" "clearfix error")
									(:label :for "name" "Organization Name")
									(:div :class "input"
												(:input :type "text" :name "name" :value (if (null organization) 
																																		 (cl-who:str "") 
																																		 (getf organization :name))))
									(unless (null name-error-message) 
										(cl-who:htm (:span :class "help-inline" (cl-who:fmt "~a" name-error-message))))
									(cl-who:htm (:div :class "clearfix"
																		(:label :for "type-id" "Type")
																		(:div :class "input"
																					(:select :name "type-id" 
																									 (loop for cur-org-type in (organization-type-list)
																											do (cl-who:htm
																													(let ((id ( getf cur-org-type :id))
																																(name (getf cur-org-type :name))
																																(type (getf organization :type)))
																														(if (equal name type) 
																																(cl-who:htm (:option 
																																						 :value id 
																																						 :selected "selected"
																																						 (cl-who:fmt "~a" name)))
																																(cl-who:htm (:option 
																																						 :value id 
																																						 (cl-who:fmt "~a" name)))))))))))
									(cl-who:htm (:div :class "actions"
																		(:button :class "btn primary" :name "save" :type "submit" "Save")))))))))

(defun save-organization ( organization-id name type-id)
"Saves an organization to the database, sets a message and returns to the list"
(let (( name (string-trim " " name)))
	(if (equal "" name) 
			(organization-form nil "Name is required")
			(progn
				(if (null organization-id)
						(create-organization name type-id)
						(update-organization organization-id name type-id))
				(hunchentoot:redirect *people-and-organizations-url*)))))