#|
  This file is a part of flintstone project.
|#

(in-package :cl-user)
(defpackage flintstone.app
  (:use :cl)
  (:import-from :caveman.app
                :<app>))
(in-package :flintstone.app)

(cl-syntax:use-syntax :annot)

@export
(defclass <flintstone-app> (<app>) ())

@export
(defvar *app* (make-instance '<flintstone-app>))
