;;Various functions to help with web stuff

(in-package :web-utils)

(defun add-plist-to-each-record (record-list)
	"Take a list: ((:ID 1 :NAME \"first good\" :INTRODUCTION-DATE #<SIMPLE-DATE:DATE 06-04-2011>  :SALES-DISCONTINUATION-DATE :NULL :SUPPORT-DISCONTINUATION-DATE :NULL  :COMMENT :NULL)) and turn it into ((:plist :ID 1 :NAME \"first good\" :INTRODUCTION-DATE #<SIMPLE-DATE:DATE 06-04-2011>  :SALES-DISCONTINUATION-DATE :NULL :SUPPORT-DISCONTINUATION-DATE :NULL  :COMMENT :NULL))"
	(loop for record in record-list
			 collect (cons :plist record)))

(defun add-list-to-the-list( record-list)
	"Take a list and turn it into (:list record-list)"
	(cons :list record-list))

(defun json-encode-list-of-plists (list-of-plists)
	"Take a list like ( (:id 1 :name \"blah\") (:id 2 :name \"blah blah\")) and convert it into json."
	 (json:with-explicit-encoder
		 (json:encode-json-to-string 
			(add-list-to-the-list 
			 (add-plist-to-each-record list-of-plists )))))

(defun convert-simple-date-to-y-m-d ( simple-date )
	"Convert the simple date object created by postmodern, and convert it to yyy-mm-dd iso-8601 format"
	(multiple-value-bind (y m d) (simple-date::decode-date simple-date) (format nil "~4,'0D-~2,'0D-~2,'0d" y m d)))

(defun convert-all-to-simple-date (plist keys)
		(loop while plist do
			 (multiple-value-bind (key value tail) (get-properties plist keys)
				 (when (typep value 'simple-date:date) (setf (getf plist key) (web-utils::convert-simple-date-to-y-m-d value)))
				 (setf plist (cddr tail)))))

(defun convert-plist-all-simple-date-to-y-m-d( plist)
	"Find all the dates in a plist, and convert them from simple-dates to yy-mm-dd iso-8601 format"
	(convert-all-to-simple-date plist (utils:plist-keys plist)))

(defun for-list-of-plists-convert-all-simple-dates-to-y-m-d( list-of-plists)
	"take a list of plists, like returned by postmodern, and convert all the simple-dates to y-m-d format."
	(loop for plist in list-of-plists do (convert-plist-all-simple-date-to-y-m-d plist) collect plist))