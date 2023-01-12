;; URL: https://youtu.be/5AfmZoGd1JM

(defun dired-org-to-ascii ()
  (interactive)
  (mapc
   (lambda (f)
     (with-current-buffer
         (find-file-noselect f)
       (org-ascii-export-to-ascii)))
   (dired-get-marked-files)))
