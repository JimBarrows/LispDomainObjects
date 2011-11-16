(in-package :people-and-organizations)

(defun people-and-organizations-list ()
"Creates a list of people and organizations"
	(web-common::with-html (:a :href *add-organization-url* "Add Organization") (:p "A list of people and organizations go here")))

(defun organization-form ()
"Creates the basic template to add an organization"
(web-common::with-html 
	(:form :action *save-organization-url* :method "post"
				 (:div :class "clearfix"
							 (:label :for "name" "Organization Name")
							 (:div :class "input"
										 (:input :type "text" :name "name")))
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
			(organization-form)
			(progn
				(create-organization name type-id)
				(hunchentoot:redirect *people-and-organizations-url*)))))