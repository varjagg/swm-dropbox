;;;; swm-dropbox.lisp
;;;; (c) 2015 Eugene Zaikonnikov

(in-package #:swm-dropbox)

(defvar *dropbox-status* "Checking..")

(defun fetch-status ()
  (setf *dropbox-status*
	(string-right-trim '(#\Space)
		     (first (split-sequence:split-sequence #\Newline (format nil "~A" (run-shell-command "dropbox status" t)))))))

(defun fmt-dropbox (ml)
  "Return dropbox status"
  (declare (ignore ml))
  *dropbox-status*)

(add-screen-mode-line-formatter #\x #'fmt-dropbox)

(run-with-timer 0 10 #'fetch-status) 
