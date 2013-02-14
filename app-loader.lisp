(progn 
(ql:quickload :caveman) 
(push #p"/app/flintstone/" asdf:*central-registry*)
(format t "::::::: ~s~%" asdf:*central-registry*)
(ql:quickload :flintstone)
(flintstone:start))
