;; uninhm
;; https://atcoder.jp/contests/abc120/tasks/abc120_a
;; implementation

(
  let (
    (a (read))
    (b (read))
    (c (read))
  )

  (write (
    min (/ (- b (mod b a)) a) c
  ))
)
