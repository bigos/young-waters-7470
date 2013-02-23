To start the app on the development machine do:

(ql:quickload :caveman)
(push #p"~/Programming/Heroku/young-waters-7470/flintstone/" asdf:*central-registry*)
(ql:quickload :flintstone)
(flintstone:stop )
(flintstone:start )
