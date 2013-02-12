#|
  This file is a part of flintstone project.
|#

(in-package :cl-user)
(defpackage flintstone.view.emb
  (:use :cl)
  (:import-from :caveman
                :config))
(in-package :flintstone.view.emb)

(cl-syntax:use-syntax :annot)

@export
(defun render (file &optional params)
  (caveman.view.emb:render
   (merge-pathnames file
    (merge-pathnames
     (config :template-path)
     (config :application-root)))
   params))
