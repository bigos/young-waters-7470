#|
  This file is a part of flintstone project.
|#

(in-package :cl-user)
(defpackage flintstone.controller
  (:use :cl
        :caveman
        :flintstone.app)
  (:import-from :flintstone.view.emb
                :render))
(in-package :flintstone.controller)

(cl-syntax:use-syntax :annot)

@url GET "/"
(defun index (params)
  @ignore params
  (render "index.html"))

@url POST "/"
(defun index-post (params)
  @ignore params
  "Hello, Caveman!")
