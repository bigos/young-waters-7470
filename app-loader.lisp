 
(require 'asdf)
(asdf:disable-output-translations)
(require-quicklisp)

(ql:quickload :caveman) 
(push #p"/app/flintstone/" asdf:*central-registry*)
(asdf:operate 'asdf:load-op :flintstone)
;(ql:quickload :flintstone)
(flintstone:start)

