;;;; bizondemand.asd

(asdf:defsystem #:bizondemand
  :serial t
  :depends-on (#:hunchentoot
               #:cl-who
               #:postmodern
							 #:parenscript
							 #:cl-json)
  :components ((:file "package")
							 (:file "utils")
               (:file "party")
							 (:file "business")
							 (:file "product")
							 (:file "web-templates")
							 (:file "web-utils")
							 (:file "dispatch")))
