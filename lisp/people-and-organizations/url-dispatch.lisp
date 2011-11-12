(in-package :people-and-organizations)


(web-common::add-menu  (list (
									web-common::make-menu-entry :name "People and Organizations" 
																	:items (list 
																					(web-common::make-sub-menu-entry :name "List" :url "/people-and-organizations")))))

(hunchentoot:define-easy-handler (list-people-and-organizations :uri "/people-and-organizations" :default-request-type :get) ()
	(web-common::with-html (:a :href "people-and-organizations/add-organization" "Add Organization") (:p "A list of people and organizations go here")))

(hunchentoot:define-easy-handler (add-organization :uri "/people-and-organizations/add-organization" :default-request-type :get) ()
	(web-common::with-html (:p "Add an organization form goes here")))

