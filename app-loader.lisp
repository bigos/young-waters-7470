 
(require 'asdf)
(asdf:disable-output-translations)

(push #p"/app/flintstone/" asdf:*central-registry*)
(require :flintstone)
(flintstone:start :port (parse-integer (sb-ext:posix-getenv "PORT")))
