;; uninhm
;; https://atcoder.jp/contests/abc256/tasks/abc256_b
;; implementation

(setq n (read))
(setq a
  (loop repeat n collect (read)))

(print
  (loop for i from (1- n) downto 0
        for e in (reverse a)
        sum e into acc
    do (if (>= acc 4)
         (return (1+ i)))
    finally (return 0)))
