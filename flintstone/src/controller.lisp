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
  ;@ignore params
  (context)
  (render "index.html"))

@url POST "/"
(defun index-post (params)
  @ignore params
  "Hello, mister Caveman!")

@url GET "/hello"  
(defun hello (params)  
  ;;(format nil "Hello, ~A" (getf params :name))
  (context)
(render "hello.html")) 
