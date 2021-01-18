;; uninhm
;; https://atcoder.jp/contests/abc181/tasks/abc181_a
;; implementation

(

let (
  (n (read))
)

(write-line
  (cond
    ((= (mod n 2) 0) "White")
    (t "Black")
  )
)

)
