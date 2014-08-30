(in-package lisp-domain-objects-asdf)

(asdf:defsystem #:lisp-domain-objects
    :serial t
    :depends-on (:cl-ddd)
    :components ((:file "package")
		 (:file "party/models")))


