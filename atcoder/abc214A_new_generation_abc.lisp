;; uninhm
;; https://atcoder.jp/contests/abc214/tasks/abc214_a
;; implementation

(setf n (read))
(write-line
  (cond ((<= n 125) "4")
        ((<= n 211) "6")
        (t          "8")))
