`(:static-path #p"static/"
  :log-path #p"log/"
  :template-path #p"templates/"
  :application-root ,(asdf:component-pathname
                      (asdf:find-system :flintstone))
  :server :hunchentoot
  :port ,(parse-integer (sb-ext:posix-getenv "PORT")))
