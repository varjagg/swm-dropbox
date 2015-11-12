;;;; swm-dropbox.asd

(asdf:defsystem #:swm-dropbox
  :description "A simple Dropbox notifier for the mode-line"
  :author "Eugene Zaikonnikov <eugene@funcall.org>"
  :license "BSD"
  :depends-on (#:stumpwm)
  :serial t
  :components ((:file "package")
               (:file "swm-dropbox")))

