(progn 
(ql:quickload :caveman) 
(push #p"/app/flintstone" asdf:*central-registry*)
(ql:quickload :flintstone)
(flintstone:start))
