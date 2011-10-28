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
               (:file "party")
							 (:file "business")
							 (:file "product")
							 (:file "jquery-utils")
							 (:file "twitter-bootstrap")
							 (:file "web-templates")
							 (:file "web-utils")
							 (:file "dispatch")))
