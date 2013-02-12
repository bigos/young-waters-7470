#|
  This file is a part of flintstone project.
|#

(in-package :cl-user)
(defpackage flintstone-test
  (:use :cl
        :flintstone
        :cl-test-more))
(in-package :flintstone-test)

(plan nil)

;; make sure the app stopped
(flintstone:stop)
(flintstone:start)

;; blah blah blah.

(flintstone:stop)

(finalize)
