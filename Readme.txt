To start the app on the development machine do:

(ql:quickload :caveman)
(push #p"/{PATH TO THE APP}/flintstone/" asdf:*central-registry*)
(ql:quickload :flintstone)
(flintstone:stop )
(flintstone:start )
