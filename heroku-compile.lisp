(in-package :cl-user)

(print ">>> Building system....")
(require 'asdf)
(asdf:disable-output-translations)
(require-quicklisp)
;(ql:quickload :hunchentoot)
(print ">>> Done building system")

(ql:quickload :caveman)
(ql:quickload "quickproject")
(quickproject:make-project "/app/flintstone/"
                             :depends-on '(hunchentoot caveman))
(ql:quickload "flintstone")


