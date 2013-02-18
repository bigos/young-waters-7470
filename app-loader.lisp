 
(require 'asdf)
(asdf:disable-output-translations)

(push #p"/app/flintstone/" asdf:*central-registry*)
(asdf:operate 'asdf:load-op :flintstone)
(flintstone:start   :port (or (parse-integer (format nil "~a" (sb-ext:posix-getenv "PORT"))) 5000))
