(in-package :people-and-organizations)

(defun add-organization-template ()
"Creates the basic template to add an organization"
(web-common::with-html 
	(:form :action "save-organization" :method "post"
				 (:div :class "clearfix"
							 (:label :for "organization-name" "Organization Name")
							 (:div :class "input"
										 (:input :type "text" :name "organization-name")))
				 (:div :class "clearfix"
							 (:label :for "organization-type" "Type")
							 (:div :class "input"
										 (:select :name "oranization-type" 
															(loop for cur-org-type in (organization-type-list)
																 do (cl-who:htm
																		 (:option :value (getf cur-org-type :id) (cl-who:fmt "~a" (getf cur-org-type :name))))))))
				 (:div :class "actions"
							 (:button :class "btn primary" :name "save" :type "submit" "Save")))))

