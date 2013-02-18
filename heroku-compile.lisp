(in-package :cl-user)

(print ">>> Building system....")
(require 'asdf)
(asdf:disable-output-translations)
(require-quicklisp)
(ql:quickload :caveman)
(print ">>> Done building system")

(push #p"/app/flintstone/" asdf:*central-registry*)
(asdf:operate 'asdf:load-op :flintstone)
