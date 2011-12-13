(in-package :people-and-organizations)

(web-common::add-menus  (list (
									web-common::make-menu-entry :name "People and Organizations" 
																	:items (list 
																					(web-common::make-sub-menu-entry :name "List" :url "/people-and-organizations")))))

(defparameter *people-and-organizations-url* "/people-and-organizations")
(defparameter *organization-url* (concatenate 'string *people-and-organizations-url* "/organization"))
(defparameter *person-url* (concatenate 'string *people-and-organizations-url* "/person"))
(defparameter *add-organization-url* (concatenate 'string *organization-url* "/add"))
(defparameter *edit-organization-url* (concatenate 'string *organization-url* "/edit"))
(defparameter *save-organization-url* (concatenate 'string *organization-url* "/save"))
(defparameter *delete-organization-url* (concatenate 'string *organization-url* "/delete"))
(defparameter *add-person-url* (concatenate 'string *person-url* "/add"))
(defparameter *save-person-url* (concatenate 'string *person-url* "/save"))

(hunchentoot:define-easy-handler (add-organization :uri *add-organization-url* :default-request-type :get) ()
	(organization-form))

(hunchentoot:define-easy-handler (add-person :uri *add-person-url* :default-request-type :get) ()
	(person-form))

(hunchentoot:define-easy-handler (delete-organization-handler :uri *delete-organization-url* :default-request-type :get) (organization-id)
	(delete-organization organization-id))

(hunchentoot:define-easy-handler (edit-organization :uri *edit-organization-url* :default-request-type :get) ( organization-id)
	(organization-form :organization-id organization-id ))

(hunchentoot:define-easy-handler (list-people-and-organizations :uri *people-and-organizations-url* :default-request-type :get) ()
	(people-and-organizations-list))

(hunchentoot:define-easy-handler (save-organization-handler :uri *save-organization-url* :default-request-type :post) (organization-id name type-id)
	(save-organization organization-id name type-id))

(hunchentoot:define-easy-handler (save-person-handler :uri *save-person-url* :default-request-type :post) ( first-name middle-name last-name gender-type-id 
																																																											 birthdate marital-status-id marital-status-from marital-status-thru)
	(save-person first-name middle-name last-name gender-type-id 
							 birthdate marital-status-id marital-status-from marital-status-thru))