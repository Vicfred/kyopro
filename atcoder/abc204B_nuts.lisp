;; uninhm
;; https://atcoder.jp/contests/abc204/tasks/abc204_b
;; implementation

(setf n (read))
(setq x 0)
(dotimes (_ n)
  (let ((a (read)))
    (if (> a 10)
      (setq x (+ x (- a 10))))))
(write x)
