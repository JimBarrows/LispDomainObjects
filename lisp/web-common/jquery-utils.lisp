;;These are helpful functions for dealing with jquery

(in-package :web-common)
(defpsmacro $ (selector &body chains)
  `(chain (j-query ,selector)
          ,@chains))

(defpsmacro \ (&body body) `(lambda () ,@body))

(defpsmacro doc-ready (&body body)
  `($ document
      (ready (\ ,@body))))

(defpsmacro defpsajax (name (&rest args) url &optional (success '(lambda (data) ($d data))))
  `(defun ,name ,args
     (chain $ (ajax (create :url ,url
       :data (create ,@(loop for a in args collect (intern (to-str a) :keyword) collect a))
       :context (@ document body)
       :type "POST"
       :success ,success
       :error (lambda (a b error) ($d a b error)))))))