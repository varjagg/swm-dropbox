;;;; swm-dropbox.lisp
;;;; (c) 2015 Eugene Zaikonnikov

(in-package #:swm-dropbox)

(defun fmt-dropbox (ml)
  "Return dropbox status"
  (declare (ignore ml))
  (string-right-trim '(#\Newline) (format nil "~A" (run-shell-command "dropbox status" t))))

(add-screen-mode-line-formatter #\x #'fmt-dropbox)
