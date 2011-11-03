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
               (:file "people-and-organizations/functions")
               (:file "people-and-organizations/models")
               (:file "people-and-organizations/load-initial-data")))

