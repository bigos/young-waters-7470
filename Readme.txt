To start the app on the development machine do:

(require :asdf)
(push #p"~/Programming/Heroku/young-waters-7470/flintstone/" asdf:*central-registry*)
(require :flintstone)
(flintstone:start)
