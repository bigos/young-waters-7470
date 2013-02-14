 
(require 'asdf)
(asdf:disable-output-translations)

(push #p"/app/flintstone/" asdf:*central-registry*)
(asdf:operate 'asdf:load-op :flintstone)

