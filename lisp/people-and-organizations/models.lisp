;;;; The models for people and organizations

(in-package :people-and-organizations)

; This maps to 2 tables, on is classification-type (id, description) and party-classification
(defstruct classification
	from-date
	thru-date
	description)

; Represents gender type, which could normally be M/F, but could also handle the other classifications as well
(defstruct gender-type
	id
	description)

(defstruct organization
	id
	name
	classifications
	roles)

(defstruct (informal-organization
						 (:include organization))
	description)

; Any organization that has a tax-id-num
(defstruct (legal-organization
						 (:include organization))
	federal-tax-id-number)

(defstruct person
	id
	first-name
	middle-name
	last-name
	title
	nickname
	marital-status
	gender
	birthdate
	classification-list
	role-list)

;People and organization play many roles, and at different times
;the roles the system will use in logic will inherit from this role and mapping systems should deal with this,
;however it's not necessary that every role type inherit from this in the code.  If the super/sub type differentiation doesn't
;matter then it's not necessary to have a type.
(defstruct role
	id
	from-date
	thru-date
	description)

(defstruct (person-role
						 (:include role)))

(defstruct (organization-role
						 (:include role)))

(defstruct (organization-unit-role
						 (:include organization-role)))

;This is for expansion without having to code new types
(defstruct (other-organization-role
						 (:include organization-unit-role)))

(defstruct (parent-organization-role
						 (:include organization-unit-role)))

(defstruct (subsidiary-role
						 (:include organization-unit-role)))

(defstruct (department-role
						 (:include organization-unit-role)))

(defstruct (division-role
						 (:include organization-unit-role)))

(defstruct (internal-organization
						 (:include organization-role)))

(defstruct (distribution-channel-role
						 (:include organization-role)))

(defstruct (agent-role
						 (:include distribution-channel-role)))

(defstruct (distributor-role
						 (:include distribution-channel-role)))

;(defmethod is-a ((child role) (parent role))