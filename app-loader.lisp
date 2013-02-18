 
(require 'asdf)
(asdf:disable-output-translations)

(push #p"/app/flintstone/" asdf:*central-registry*)
(asdf:operate 'asdf:load-op :flintstone)
(flintstone:start :port (parse-integer (sb-ext:posix-getenv "PORT")))
