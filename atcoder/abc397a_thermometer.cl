;;;(* vicfred
;;; https://atcoder.jp/contests/abc397/tasks/abc397_a
;;; implementation

(defun main ()
  ;; Read a floating-point number from input
  (let ((x (read)))
    ;; Apply condition logic
    (cond ((>= x 38.0)
           (format t "~d~%" 1))
          ((>= x 37.5)
           (format t "~d~%" 2))
          (t
           (format t "~d~%" 3)))))

;; Call the main function
(main)
