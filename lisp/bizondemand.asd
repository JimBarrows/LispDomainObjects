;;;; bizondemand.asd

(asdf:defsystem #:bizondemand
  :serial t
  :depends-on (#:hunchentoot
               #:cl-who
               #:postmodern)
  :components ((:file "package")
               (:file "party")
							 (:file "dispatch")))
