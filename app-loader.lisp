 
(require 'asdf)
(asdf:disable-output-translations)

(push #p"/app/flintstone/" asdf:*central-registry*)
(require-quicklisp)
(ql:quickload :flintstone)
(flintstone:start :port (parse-integer (sb-ext:posix-getenv "PORT")))
