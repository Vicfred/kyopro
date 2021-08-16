;; uninhm
;; https://atcoder.jp/contests/abc204/tasks/abc204_a
;; implementation

(let ((x (read))
      (y (read)))
  (if (= x y)
    (write x)
    (write (- 3 x y))))
