(progn 
(ql:quickload :caveman) 
(push #p"flintstone/" asdf:*central-registry*)
(format t "~a~%" asdf:*central-registry*)
(ql:quickload :flintstone)
(flintstone:start))
