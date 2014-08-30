(in-package :ldo-party)

(defentity party ())

(defentity person (party))

(defentity organization (party))

(defclass party-role ()
  ((type)
   (for)
   (date-range)))

