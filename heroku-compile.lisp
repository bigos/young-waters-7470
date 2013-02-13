(in-package :cl-user)

(print ">>> Building system....")
(require 'asdf)
(asdf:disable-output-translations)
(require-quicklisp)
(ql:quickload :hunchentoot)
(print ">>> Done building system")

(ql:quickload :caveman)
(pushnew "/app/flintstone/" asdf:*central-registry* :test #'equal) 
(ql:quickload "flintstone")
(flintstone:start) 
