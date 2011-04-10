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
	(princ
	 (json:with-explicit-encoder
		 (json:encode-json-to-string 
			(add-list-to-the-list 
			 (add-plist-to-each-record list-of-plists ))))))