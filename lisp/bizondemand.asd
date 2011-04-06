;;;; bizondemand.asd

(asdf:defsystem #:bizondemand
  :serial t
  :depends-on (#:hunchentoot
               #:cl-who
               #:postmodern
							 #:parenscript
							 #:cl-json)
  :components ((:file "package")
               (:file "party")
							 (:file "business")
							 (:file "product")
							 (:file "templates")
							 (:file "dispatch")))
