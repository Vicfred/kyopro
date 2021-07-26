; uninhm
; https://atcoder.jp/contests/abc208/tasks/abc208_a
; implementation, very basic math

(define a (read))
(define b (read))

(display
  (if (and (<= b (* a 6)) (>= b a))
    "Yes"
    "No"))
(newline)
