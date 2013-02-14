(progn 
(ql:quickload :caveman) 

(ql:quickload "quickproject")
(quickproject:make-project "/app/flintstone/" :depends-on '(hunchentoot caveman))
(ql:quickload :flintstone)
(flintstone:start))
