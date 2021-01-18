; uninhm
; https://atcoder.jp/contests/abc124/tasks/abc124_a
; implementation

(let ((a (read))
      (b (read)))

(write (+ (max a b) (max (- (max a b) 1) (min a b)))))
