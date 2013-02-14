(progn 
(ql:quickload :caveman) 
(ql:quickload :quickproject) 
(quickproject:make-project "/app/flintstone/" :depends-on '(caveman))
(ql:quickload :flintstone)
(flintstone:start))
