;;These are helpful functions for dealing with jquery

(in-package :web-common)

(defpsmacro $ (selector &body chains)
  `(chain (j-query ,selector)
      ,@chains))

(defpsmacro doc-ready (&body body)
  `($ document
      (ready (lambda ,@body))))