; uninhm
; https://atcoder.jp/contests/abc125/tasks/abc125_a
; math

(

let ((a (read))
     (b (read))
     (c (read)))

(write (
  * b (/ (- c (mod c a)) a)
))

)
