(progn 
(require 'asdf)
(asdf:disable-output-translations)
(require-quicklisp)

(ql:quickload :caveman) 
(push #p"/app/flintstone/" asdf:*central-registry*)
(ql:quickload :flintstone)
(flintstone:start))
