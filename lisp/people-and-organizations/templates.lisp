(in-package :people-and-organizations)

(defun add-organization-template ()
"Creates the basic template to add an organization"
(web-common::with-html (:form :action "people-and-organization/save-organization" :method "post"
															(:label :for "organization-name" "Organization Name")
															(:input :type "text" :name "organization-name")
															(:br)
															(:button :class "btn primary" :name "save" :type "submit" "Save"))))