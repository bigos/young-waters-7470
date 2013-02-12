#|
  This file is a part of flintstone project.
|#

(in-package :cl-user)
(defpackage flintstone
  (:use :cl
        :clack
        :clack.builder
        :clack.middleware.static
        :clack.middleware.session)
  (:shadow :stop)
  (:import-from :caveman
                :config)
  (:import-from :caveman.project
                :<project>
                :build
                :project-mode
                :debug-mode-p)
  (:import-from :clack.builder
                :*builder-lazy-p*)
  (:import-from :flintstone.app
                :*app*)
  (:import-from :cl-ppcre
                :scan
                :regex-replace))
(in-package :flintstone)

(cl-syntax:use-syntax :annot)

@export
(defclass <flintstone> (<project>) ())

@export
(defvar *project* nil)

(defmethod build ((this <flintstone>))
  (builder
   (<clack-middleware-static>
    :path (lambda (path)
            (when (ppcre:scan "^(?:/static/|/images/|/css/|/js/|/robot\\.txt$|/favicon.ico$)" path)
              (ppcre:regex-replace "^/static" path "")))
    :root (merge-pathnames (config :static-path)
                           (config :application-root)))
   <clack-middleware-session>
   flintstone.app:*app*))

@export
(defun start (&key (mode :dev) (debug t) lazy port)
  (setf *project* (make-instance '<flintstone>))
  (caveman.project:start *project* :mode mode :debug debug :lazy lazy :port port))

@export
(defun stop ()
  (when *project*
    (caveman.project:stop *project*)
    (setf *project* nil)))
