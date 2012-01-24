;;;; bizondemand.asd

(asdf:defsystem #:bizondemand
  :serial t
  :depends-on (#:hunchentoot
               #:cl-who
							 #:simple-date
               #:postmodern
							 #:parenscript
							 #:cl-json)
  :components ((:file "package")
							 (:file "utils")
							 (:file "database-utils")
							 (:file "web-common/jquery-utils")
							 (:file "web-common/twitter-bootstrap")
							 (:file "web-common/web-utils")
							 (:file "web-common/web-templates")
							 (:file "web-common/dispatch")
               (:file "people-and-organizations/data-access")
               (:file "people-and-organizations/data-load")
							 (:file "people-and-organizations/data-setup")
							 (:file "people-and-organizations/models")
               (:file "people-and-organizations/templates")
							 (:file "people-and-organizations/url-dispatch")))

