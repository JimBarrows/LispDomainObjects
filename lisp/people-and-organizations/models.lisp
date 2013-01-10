;;;; The models for people and organizations

(in-package :people-and-organizations)


(defclass organization (classifiable)
;	"Represents a group of 1 or more people.  Could be a corporation, club, informal group etc"
	((id)
	(name)
	(classifications)
	(roles)))

(defclass person (classifiable)
	(id
	first-name
	middle-name
	last-name
	title
	nickname
	marital-status
	gender
	birthdate
	classification-list
	role-list))

(defclass classification ()
;	"Represents a classification for a party (person or organization)"
	((id)
	 ( description)))

(defclass classifiable ()
;	"Base class for a person or organization to allow them to be classified"
	(( party)
	 ( classification)
	 (from-date)
	 (thru-date)))

; Represents gender type, which could normally be M/F, but could also handle the other classifications as well
(defclass gender-type ()
	((id)
	(description)))

;People and organization play many roles, and at different times.
;Some roles are general (organization vs person), and some more specific.
(defstruct role
	id
	from-date
	thru-date
	description
	parent
	children)

(defclass informal-organization (organization)
;	"An informal group of friends, a club with no legal standing etc."
	((description)))

; Any organization that has a tax-id-num
(defclass legal-organization	 (organization)
;	"An oranization that has legal standing, corporation, non-profit etc."
	((federal-tax-id-number)))

(defparameter *person-roles* (load-person-roles))
(defparameter *organization-roles* (load-organization-roles))
