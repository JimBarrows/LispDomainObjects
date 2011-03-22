;;;; bizondemand.asd

(asdf:defsystem #:bizondemand
  :serial t
  :depends-on (#:hunchentoot
               #:hh-web-tags
               #:postmodern)
  :components ((:file "package")
               (:file "party")
							 (:file "dispatch")))
