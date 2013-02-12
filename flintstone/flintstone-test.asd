#|
  This file is a part of flintstone project.
|#

(in-package :cl-user)
(defpackage flintstone-test-asd
  (:use :cl :asdf))
(in-package :flintstone-test-asd)

(defsystem flintstone-test
  :author ""
  :license ""
  :depends-on (:flintstone
               :cl-test-more)
  :components ((:module "t"
                :components
                ((:file "flintstone"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
