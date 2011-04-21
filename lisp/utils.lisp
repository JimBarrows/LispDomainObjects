;;Various utility functions

(in-package :utils)

(defun plist-keys (plist) 
	"Extract all the keys of a plist into a list"
	(if (null plist) plist
			(cons (car plist) (plist-keys (cddr plist)))))
