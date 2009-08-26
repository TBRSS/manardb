(cl:defpackage #:manardb
  (:export 
   #:mptr
   #:mm-metaclass
   #:defmmclass
   #:*mmap-pathname-defaults*
   #:*mmap-sharing*
   #:close-all-mmaps
   #:open-all-mmaps
   #:doclass
   #:dosubclasses
   #:retrieve-all-instances
   #:count-all-instances

   #:mptr-to-lisp-object
   #:lisp-object-to-mptr
   #:lisp-object-to-mptr-impl

   #:marray
   #:make-marray
   #:marray-ref
   #:marray-length
   #:index-of-marray
   #:in-marray

   #:gc

   #:make-mm-fixed-string
   #:mm-fixed-string-value

   #:direct-slot-numeric-maref ;; XXXX to delete when we have time for something better
   )
  #+sbcl (:import-from #:sb-pcl #:reader-function #:writer-function)
  (:use #:iterate #:closer-common-lisp))