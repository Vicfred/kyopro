;;;(* vicfred
;;; https://atcoder.jp/contests/abc397/tasks/abc397_a
;;; implementation

(define (main args)
  ;; Read a floating-point number from input
  (let ((x (read)))
    ;; Apply condition logic
    (cond ((>= x 38.0)
           (display 1)
           (newline))
          ((>= x 37.5)
           (display 2)
           (newline))
          (else
           (display 3)
           (newline))))
  0)
