`(:static-path #p"static/"
  :log-path #p"log/"
  :template-path #p"templates/"
  :application-root ,(asdf:component-pathname
                      (asdf:find-system :flintstone))
  :server :hunchentoot
  :port ,(or (parse-integer (format nil "~a" (sb-ext:posix-getenv "PORT")) :junk-allowed t) 5000)
  )
